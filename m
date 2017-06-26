Return-Path: <alexandre.belloni@free-electrons.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2AD9EAE0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 22:23:17 +0000 (UTC)
Received: from mail.free-electrons.com (mail.free-electrons.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 7B568125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Jun 2017 22:23:16 +0000 (UTC)
Date: Tue, 27 Jun 2017 00:23:14 +0200
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
To: Pavel Machek <pavel@ucw.cz>
Message-ID: <20170626222314.fo4hs4mymdjtuobu@piout.net>
References: <20170625104850.GA24717@amd>
	<87shinzkp9.fsf@notabene.neil.brown.name>
	<20170626083407.GA9621@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170626083407.GA9621@amd>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] mobile phones
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 26/06/2017 at 10:34:07 +0200, Pavel Machek wrote:
> So we currently have GPSes on serial, producing NMEA. Gpsd there may
> be good enough. But then we have different hardware, not producing
> NMEA (GPS on N900 is exposed as network packet over PHONET
> interface, there's drivers/usb/serial/garmin_gps.c with who-knows-what
> interface)... and it would be nice to have good, "native" GPS
> interface which would work in this case. (We'd like timestamps for
> incoming data and lat/long/alt + speed in lat/long/alt + error in
> lat/long/alt sampled at the same time, at the very least).
> 

garmin_gps is actually not desirable and is better handled in
userspace, see:
http://wiki.openstreetmap.org/wiki/USB_Garmin_on_GNU/Linux



-- 
Alexandre Belloni, Free Electrons
Embedded Linux and Kernel engineering
http://free-electrons.com
