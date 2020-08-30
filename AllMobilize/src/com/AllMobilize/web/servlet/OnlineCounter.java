package com.AllMobilize.web.servlet;

import javax.jms.Session;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.logging.Logger;

public class OnlineCounter extends HttpServlet implements HttpSessionListener {


        private static Logger log = Logger.getLogger(String.valueOf(OnlineCounter.class));
        private static final long serialVersionUID = 1L;
        private static int sessionCounter = 0;
        public OnlineCounter() {
        log.info("OnlineCounter initialized.");
        }

        @Override
    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        sessionCounter++;
        log.info("session created:" + sessionCounter);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        sessionCounter--;
        log.info("session destroied");
    }

    public static int getOnlineSession() {
        return sessionCounter;
    }
}
