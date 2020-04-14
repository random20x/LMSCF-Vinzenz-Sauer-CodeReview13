<?php
namespace AppBundle\Controller;
use AppBundle\Entity\bigevents;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class PublicController extends Controller {
	/**
	 * @Route("/", name="public_list")
	 */
	public function listAction() {
		$events = $this->getDoctrine()->getRepository('AppBundle:bigevents')->findAll();
		return $this->render('public/index.html.twig', array('events' => $events, 'categoryMsg' => 'Upcoming Events'));
	}

	/**
	 * @Route("/details/{id}", name="public_details")
	 */
	public function detailsAction($id) {
		$event = $this->getDoctrine()->getRepository('AppBundle:bigevents')->find($id);
		return $this->render('public/details.html.twig', array('event' => $event));
	}

	/**
	 * @Route("/{eventType}", name="filtered_list")
	 */

	// I get the event's category through the url and use findBy to return all rows like with sql:WHERE 
	public function filterAction($eventType, Request $request) {
		$events = $this->getDoctrine()->getRepository('AppBundle:bigevents')->findBy(array('eventType' => $eventType));
		$UpperEvent = ucfirst($eventType);
		$msg = "Looking for {$UpperEvent}?";
		return $this->render('public/index.html.twig', array('events' => $events, 'categoryMsg' => $msg));
	}
}