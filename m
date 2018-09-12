Return-Path: <SRS0=/nr1=L2=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3A0F6E5F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 20:24:26 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B9B1B786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Sep 2018 20:24:25 +0000 (UTC)
Date: Wed, 12 Sep 2018 16:24:22 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Message-ID: <20180912162422.37d545ec@vmware.local.home>
In-Reply-To: <1536706409.3511.14.camel@HansenPartnership.com>
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
	<1536706409.3511.14.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
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

On Tue, 11 Sep 2018 18:53:29 -0400
James Bottomley <James.Bottomley@HansenPartnership.com> wrote:

> > Why not do what I do and push to a -pre-next branch when you kick off
> > your local tests?  
> 
> Because there's no point.  As I said, when we complete the local
> criteria the branch is ready for integration.  We push to -next and
> *all* the built bots tell us if there are any problems (which I don't
> expect there are but there's room for me to be wrong) ... including
> 0day.  I don't see what the delay and the process hassle would buy us
> if we only get a review by 0day in the -pre-next branch.  It seems more
> efficient to let every bot loose on what we think is mergeable.

Stephen,

If a bot discovers a new failure in linux-next, do you look to see
which tree caused it? And then create a new linux-next without that
tree?

If not, then perhaps we should do so.

-- Steve
