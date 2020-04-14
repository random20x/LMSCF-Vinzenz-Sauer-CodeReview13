<?php
namespace AppBundle\Controller;
use AppBundle\Entity\bigevents;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class CrudController extends Controller {
	/**
	 * @Route("/admin", name="admin_list")
	 */
	public function listAction() {
		$events = $this->getDoctrine()->getRepository('AppBundle:bigevents')->findAll();
		return $this->render('admin/index.html.twig', array('events' => $events));
	}
	/**
	 * @Route("/admin/create", name="admin_create")
	 */
	public function createAction(Request $request) {
		$event = new bigevents; // Here we create an object from the class that we made

		/* Here we will build a form using createFormBuilder and inside this function we will put our object and then we write add then we select the input type then an array to add an attribute that we want in our input field */
		$form = $this->createFormBuilder($event)
			->add('eventType', ChoiceType::class, array('choices' => array('Concert' => 'Concert', 'Exhibitions' => 'Exhibitions', 'Theater' => 'Theater', 'Major Events' => 'Major Events'), 'attr' => array('class' => 'form-control', 'style' => 'margin-botton:12px')))
			->add('title', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('location', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('address', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('www', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('email', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('phone', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('capacity', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('image', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('dueDate', DateTimeType::class, array('attr' => array('style' => 'margin-bottom:12px')))
			->add('description', TextareaType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('save', SubmitType::class, array('label' => 'Create Event', 'attr' => array('class' => 'btn-primary', 'style' => 'margin-bottom:12px')))
			->getForm();
		$form->handleRequest($request);

		/* Here we have an if statement, if we click submit and if  the form is valid we will take the values from the form and we will save them in the new variables */
		if ($form->isSubmitted() && $form->isValid()) {
			//fetching data
			$eventType = $form['eventType']->getData();
			$title = $form['title']->getData();
			$location = $form['location']->getData();
			$address = $form['address']->getData();
			$www = $form['www']->getData();
			$email = $form['email']->getData();
			$phone = $form['phone']->getData();
			$capacity = $form['capacity']->getData();
			$image = $form['image']->getData();
			$dueDate = $form['dueDate']->getData();
			$description = $form['description']->getData();

			/* these functions we bring from our entities, every column have a set function and we put the value that we get from the form */
			$event->setEventType($eventType);
			$event->setTitle($title);
			$event->setLocation($location);
			$event->setAddress($address);
			$event->setWww($www);
			$event->setEmail($email);
			$event->setPhone($phone);
			$event->setCapacity($capacity);
			$event->setImage($image);
			$event->setDueDate($dueDate);
			$event->setDescription($description);
			$em = $this->getDoctrine()->getManager();
			$em->persist($event);
			$em->flush();
			$this->addFlash(
				'notice',
				'Event Added'
			);
			return $this->redirectToRoute('admin_list');
		}
		/* now to make the form we will add this line form->createView() and now you can see the form in create.html.twig file  */
		return $this->render('admin/create.html.twig', array('form' => $form->createView()));
	}

	/**
	 * @Route("/admin/edit/{id}", name="admin_edit")
	 */
	public function editAction($id, Request $request) {
		/* Here we have a variable event and it will save the result of this search and it will be one result because we search based on a specific id */
		$event = $this->getDoctrine()->getRepository('AppBundle:bigevents')->find($id);

		/* SET */
		$event->setEventType($event->getEventType());
		$event->setTitle($event->getTitle());
		$event->setLocation($event->getLocation());
		$event->setAddress($event->getAddress());
		$event->setWww($event->getWww());
		$event->setEmail($event->getEmail());
		$event->setPhone($event->getPhone());
		$event->setCapacity($event->getCapacity());
		$event->setImage($event->getImage());
		$event->setDueDate($event->getDueDate());
		$event->setDescription($event->getDescription());

		/* FORMBUILDER */
		$form = $this->createFormBuilder($event)
			->add('eventType', ChoiceType::class, array('choices' => array('Concerts' => 'Concerts', 'Exhibitions' => 'Exhibitions', 'Theater' => 'Theater', 'Major Events' => 'Major Events'), 'attr' => array('class' => 'form-control', 'style' => 'margin-botton:12px')))
			->add('title', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('location', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('address', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('www', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('email', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('phone', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('capacity', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('image', TextType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('dueDate', DateTimeType::class, array('attr' => array('style' => 'margin-bottom:12px')))
			->add('description', TextareaType::class, array('attr' => array('class' => 'form-control', 'style' => 'margin-bottom:12px')))
			->add('save', SubmitType::class, array('label' => 'Update Event', 'attr' => array('class' => 'btn-primary', 'style' => 'margin-botton:12px')))
			->getForm();

		$form->handleRequest($request);
		if ($form->isSubmitted() && $form->isValid()) {
			//fetching data
			$eventType = $form['eventType']->getData();
			$title = $form['title']->getData();
			$location = $form['location']->getData();
			$address = $form['address']->getData();
			$www = $form['www']->getData();
			$email = $form['email']->getData();
			$phone = $form['phone']->getData();
			$capacity = $form['capacity']->getData();
			$image = $form['image']->getData();
			$dueDate = $form['dueDate']->getData();
			$description = $form['description']->getData();

			// $now = new \DateTime('now'); not needed withing scope of assignment
			$em = $this->getDoctrine()->getManager();
			$event = $em->getRepository('AppBundle:bigevents')->find($id);
			$event->setEventType($eventType);
			$event->setTitle($title);
			$event->setLocation($location);
			$event->setAddress($address);
			$event->setWww($www);
			$event->setEmail($email);
			$event->setPhone($phone);
			$event->setCapacity($capacity);
			$event->setImage($image);
			$event->setDueDate($dueDate);
			$event->setDescription($description);

			$em->flush();
			$this->addFlash(
				'notice',
				'bigevents Updated'
			);
			return $this->redirectToRoute('admin_list');
		}
		return $this->render('admin/edit.html.twig', array('event' => $event, 'form' => $form->createView()));
	}
	/**
	 * @Route("/admin/details/{id}", name="admin_details")
	 */
	public function detailsAction($id) {
		$event = $this->getDoctrine()->getRepository('AppBundle:bigevents')->find($id);
		return $this->render('admin/details.html.twig', array('event' => $event));
	}

	/**
	 * @Route("/admin/delete/{id}", name="admin_delete")
	 */
	public function deleteAction($id) {
		$em = $this->getDoctrine()->getManager();
		$event = $em->getRepository('AppBundle:bigevents')->find($id);
		$em->remove($event);
		$em->flush();
		$this->addFlash(
			'notice',
			'bigevents Removed'
		);
		return $this->redirectToRoute('admin_list');
	}
}