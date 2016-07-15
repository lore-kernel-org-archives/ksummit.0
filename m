Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0B6A671
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 06:14:18 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0122C8E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 06:14:16 +0000 (UTC)
Date: Fri, 15 Jul 2016 15:14:24 +0900
From: Greg KH <greg@kroah.com>
To: NeilBrown <neilb@suse.com>
Message-ID: <20160715061424.GA16223@kroah.com>
References: <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com> <5788337F.8000500@roeck-us.net>
	<20160715014103.GA5791@kroah.com> <578850EB.3090109@roeck-us.net>
	<20160715042938.GA5527@kroah.com>
	<874m7rcus8.fsf@notabene.neil.brown.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <874m7rcus8.fsf@notabene.neil.brown.name>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 15, 2016 at 03:52:39PM +1000, NeilBrown wrote:
> > during new releases they use quilt for all of their work, adding and
> > removing and updating patches all the time.
> 
> So you are saying quilt is good for release management, and Guenter is
> saying it is bad for development.  Maybe you are in agreement.

Heh, yes, I think we are in agreement.  The "fun" thing is, people take
the thing you release and do development on it.  So the developers want
the output of your release in a format that they can do work with.

I talked with Geert today about this, and he gave me some ideas for how
to make the output of the LTSI tree in a git tree that people can work
off of.  Much like I've started to do now with the stable trees, and the
-rc git tree of patches built from my quilt series.  I'll work on this
over time and see how that goes.

thanks,

greg k-h
