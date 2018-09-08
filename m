Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4F9A3D54
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 15:29:32 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C77D0623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  8 Sep 2018 15:29:31 +0000 (UTC)
Date: Sat, 8 Sep 2018 17:29:28 +0200
From: Greg KH <greg@kroah.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20180908152928.GA11120@kroah.com>
References: <nycvar.YFH.7.76.1809062054450.15880@cbobk.fhfr.pm>
	<CALCETrWsWGbo0B7=_AAOinJVCLrZbhJ75W2eUPxLCyo2BspBxA@mail.gmail.com>
	<alpine.DEB.2.21.1809081037440.1402@nanos.tec.linutronix.de>
	<20180908082141.15d72684@coco.lan>
	<20180908113411.GA3111@kroah.com>
	<A243E221-F38D-441F-A888-481010478996@amacapital.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <A243E221-F38D-441F-A888-481010478996@amacapital.net>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Handling of embargoed
 security issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Sep 08, 2018 at 07:20:00AM -0700, Andy Lutomirski wrote:
> 
> 
> > On Sep 8, 2018, at 4:34 AM, Greg KH <greg@kroah.com> wrote:
> > 
> >> On Sat, Sep 08, 2018 at 08:21:41AM -0300, Mauro Carvalho Chehab wrote:
> >> IMHO, the best would be to have a formal/legal way to handle it.
> > 
> > No, sorry, some of us are not allowed legally to sign NDAs for stuff
> > like this.  So keeping legal out of is it the best solution and we have
> > done that pretty well so far.
> > 
> 
> A lot us us (such as yours truly) have NDAs in place. I would love a
> clear mechanism by which a vendor gives explicit permission for me to
> communicate with other relevant parties. It doesn’t need to be fancy
> and legalistic, but having it written down would be very, very nice.

I agree, what we have now is a mis-match of different people working for
different companies with different types of NDAs through different
companies or not, trying to deal with different companies trying to work
with us.

Having something "simple" for us to work off of would be good, and this
isn't the first thread that this topic has come up on.  I know people
want to solve this, and maybe the LF is the way to go here.  There was a
meeting last week at Harvard to start to consider how this could happen.
Hopefully in a few months we will have something "solid" to discuss.

thanks,

greg k-h
