Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 51538E4A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 22:53:43 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F30A713A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Sep 2018 22:53:42 +0000 (UTC)
Message-ID: <1536706409.3511.14.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Steven Rostedt <rostedt@goodmis.org>
Date: Tue, 11 Sep 2018 18:53:29 -0400
In-Reply-To: <20180911163136.1d6653a6@vmware.local.home>
References: <CA+55aFz57ASBqAvXnCv4_uZ3niPJjTDdSmOOdyaFeW8gCAwSHQ@mail.gmail.com>
	<20180907145437.GF16300@sasha-vm>
	<CA+55aFzp340RDJUDoOGtN5ENgdCSSkksvG0yPt74BgyvTrAE4Q@mail.gmail.com>
	<20180910194310.GV16300@sasha-vm>
	<20180910164519.6cbcc116@vmware.local.home>
	<20180910212019.GA32269@roeck-us.net>
	<20180910174638.26fff182@vmware.local.home>
	<20180910230301.GB1764@localhost.localdomain>
	<20180910191329.70f90a14@vmware.local.home>
	<20180911114227.241f2e5d@vmware.local.home>
	<20180911174043.GK5659@atomide.com>
	<1536688022.3511.5.camel@HansenPartnership.com>
	<20180911143923.11e479ea@vmware.local.home>
	<1536696572.3511.12.camel@HansenPartnership.com>
	<20180911163136.1d6653a6@vmware.local.home>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2018-09-11 at 16:31 -0400, Steven Rostedt wrote:
> On Tue, 11 Sep 2018 16:09:32 -0400
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
> 
> > On Tue, 2018-09-11 at 14:39 -0400, Steven Rostedt wrote:
[...]
> > > > This applies to 0day as well, because, by agreement, it has a
> > > > much deeper set of xfstest runs for branches we actually queue
> > > > for -next rather than the more cursory set of tests it runs on
> > > > ML patches.  
> > > 
> > > What about the tests on local branches? Not what you post to the
> > > ML.  
> > 
> > I don't really see any point having a local -pre-next pass and
> > hoping 0day will find it.  It's much more valuable (and faster) to
> > push to -next and have all the integrated tests work on it once
> > we've done everything we can locally.
> 
> Why not do what I do and push to a -pre-next branch when you kick off
> your local tests?

Because there's no point.  As I said, when we complete the local
criteria the branch is ready for integration.  We push to -next and
*all* the built bots tell us if there are any problems (which I don't
expect there are but there's room for me to be wrong) ... including
0day.  I don't see what the delay and the process hassle would buy us
if we only get a review by 0day in the -pre-next branch.  It seems more
efficient to let every bot loose on what we think is mergeable.


James
