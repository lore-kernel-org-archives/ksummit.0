Return-Path: <pavel@ucw.cz>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id ED32E482
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 11:07:11 +0000 (UTC)
Received: from atrey.karlin.mff.cuni.cz (atrey.karlin.mff.cuni.cz
	[195.113.26.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3B4D314B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 23 Jul 2015 11:07:11 +0000 (UTC)
Date: Thu, 23 Jul 2015 12:57:26 +0200
From: Pavel Machek <pavel@ucw.cz>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20150723105726.GC30929@amd>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Subject: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi!

(Please cc me on replies).

Significant percentage of phones run Linux kernel today, but geting
mainline kernel to work on a phone is very hard to do. (So hard, that
newest device that is close to working on recent mainline was made in
2009.) There are multiple obstacles, including huge patches from
silicon vendors, missing GNU/Linux userspace support that makes kernel
testing hard, interfaces unsuitable for phones and power management
problems.

Interested people:

Sebastian Reichel <sre@kernel.org>
Pali Rohár <pali.rohar@gmail.com>


									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
