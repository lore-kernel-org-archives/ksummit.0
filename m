Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB3B3EB0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 14:35:10 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 685D6174
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 13 Jun 2019 14:35:10 +0000 (UTC)
Message-ID: <1560436507.3329.12.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, "Martin K. Petersen"
	<martin.petersen@oracle.com>
Date: Thu, 13 Jun 2019 07:35:07 -0700
In-Reply-To: <20190613104930.7dc85e13@coco.lan>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, 2019-06-13 at 10:49 -0300, Mauro Carvalho Chehab wrote:
> Em Fri, 07 Jun 2019 16:14:46 -0400
> "Martin K. Petersen" <martin.petersen@oracle.com> escreveu:
> 
> > Dan,
> > 
> > > That said, I do think moving forward with the document would be
> > > necessary pre-work for this conversation. Just the act of putting
> > > subsystem specific policies in writing even if they differ would
> > > go along way towards making the lives of contributors less
> > > fraught with arbitrary peril.  
> > 
> > I think part of the problem is that some subsystems are older than
> > others.
> > 
> > It is much easier to enforce your favorite bike shed/Xmas tree if
> > the code is very similar and developed by like-minded people. Or
> > written in this millennium.
> > 
> > Whereas in SCSI I have 25+ years of changes in coding practices,
> > numerous vendor drivers influenced by styles in various other
> > operating systems, etc. to deal with.
> > 
> > I try to enforce current best practices on core code because that
> > is a very limited subset. And one which I can micro-manage. But
> > trying to enforce similar rules on old crusty stuff which probably
> > has no active maintainer is fraught with error. Plus things become
> > completely unreadable if you start mixing new and 25+ year old
> > style inside a single file.
> > 
> > So I am perfectly OK with having policies. But communicating and
> > enforcing them on a per-subsystem basis is too coarse a granularity
> > for the reality I have to deal with. Consequently, I think your
> > MAINTAINERS tagging idea is a good approach.
> > 
> 
> That's true, but it doesn't mean that those old style subsystems
> can't be improved.

It depends: every patch you do to an old driver comes with a risk of
breakage.  What we've found is even apparently sane patches cause
breakage which isn't discovered until months later when someone with
the hardware actually tests.  So the general rule is:

   1. No whitespace/style changes to old drivers without a fix as well
   2. We might take changes in comments only (spelling updates or licence
      stuff) and other stuff that provably doesn't alter the binary.
   3. Fixes which are tested on the actual hardware are welcome.
   4. Any "obvious" bug fixes which aren't hardware tested really have to
      be obvious and well inspected (these are the ones that usually cause
      the problems)
   5. Systemwide sweeps we do and usually just pray it was right

However, if someone comes along with the actual hardware to test and
wants to take over maintaining it, they pretty much get carte blance to
do whatever they want (see NCR 5380), so the above only applies to
unmaintained old drivers.

> In the case of media we have 20+ years of changes. So, the received
> code had a myriad of different coding styles.
> 
> Yet, we do enforce the current coding practices to all new code
> we receive.

We don't.  We enforce style in the existing driver for readability and
consistency unless you're the maintainer of the driver and wish to
change it.  Then we'd insist on changing it to kernel style.

> Also, at least at the core (and on some drivers that people use as 
> reference for new codes), when we receive patches that do a large 
> amount of changes at the code, and we have some spare time, we run
> checkpatch.pl at the entire affected file, and we fix the style as
> much as possible[1].

We have done this, but only if the Maintainer wants to do it.  For
drivers with no maintainer, we definitely don't.

James

> Yeah, that's painful, but as we do such practices for quite sime
> time, nowadays the code gets improved and now people tend to do first
> time  submissions using the current style practices.
> 
> [1] We usually ignore 80 column warnings on legacy code though,
> as a proper fix would mean to rewrite the code in order to split
> functions into smaller ones, with could cause regressions.
> 
> Thanks,
> Mauro
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
> 
