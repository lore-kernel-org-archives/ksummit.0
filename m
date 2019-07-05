Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB7B410BF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 09:04:07 +0000 (UTC)
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
	[209.85.208.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2E88270D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 09:04:07 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id m23so8506328lje.12
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 05 Jul 2019 02:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<20190703085620.GA5007@pendragon.ideasonboard.com>
In-Reply-To: <20190703085620.GA5007@pendragon.ideasonboard.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 5 Jul 2019 11:03:53 +0200
Message-ID: <CACRpkdaaLiJnHeppy9fq0ymeoJ1oyB6G6VHyNG-NFosze=Oq_w@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 3, 2019 at 10:56 AM Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:

> I may have missed the obvious, but while this should work great for
> patches applied with git-am, what's the expected workflow for patches
> written by the author of a pull request ? I certainly post my own
> patches for review on mailing lists, but I don't fetch them back from
> the list before sending a pull request. Do we want to move towards a
> model where maintainers should retrieve their own patches from the lists
> (or from patchwork) ?

This is what I do in DRM as this subsystem requires the list ID.

I agree it's a bit impractical.

Yours,
Linus Walleij
