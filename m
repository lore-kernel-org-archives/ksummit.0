Return-Path: <martin.petersen@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 6CFC2C8A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 13:43:34 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BCBC42D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 13:43:33 +0000 (UTC)
To: Jiri Kosina <jikos@kernel.org>
From: "Martin K. Petersen" <martin.petersen@oracle.com>
References: <1536142432.8121.6.camel@HansenPartnership.com>
	<20180905113715.GJ9781@sirena.org.uk>
	<20180905150315.GA10819@linux.vnet.ibm.com>
	<20180905115008.22e3d21f@gandalf.local.home>
	<20180905162007.GO4225@linux.vnet.ibm.com>
	<1536165914.3627.17.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809052119580.15880@cbobk.fhfr.pm>
	<1536176428.3627.28.camel@HansenPartnership.com>
	<nycvar.YFH.7.76.1809062152330.15880@cbobk.fhfr.pm>
Date: Tue, 18 Sep 2018 09:43:08 -0400
In-Reply-To: <nycvar.YFH.7.76.1809062152330.15880@cbobk.fhfr.pm> (Jiri
	Kosina's message of "Thu, 6 Sep 2018 21:54:59 +0200 (CEST)")
Message-ID: <yq1bm8urker.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] Distribution kernel
	bugzillas considered harmful
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


Hi Jiri,

Sorry I'm a little late to the game here. Been out on vacation.

> We order patches in our trees in the same git-topological-ordering as they 
> are upstream. It has a lot of benefits, most importantly: it doesn't 
> introduce artificial conflicts that don't exist in reality.
>
> In order to achieve that, we of course need 1:1 mapping between our
> patches and upstream commits.  Rebases destroy that mapping.
>
> And in some areas (scsi is one, but not the only one), we basically had no 
> other choice than considering maintainer's tree to be already "upstream 
> enough", without waiting for Linus' tree merge.

When I discussed this with Johannes a little while ago, I suggested you
guys used git patch-id to track patches instead of commit ids. That's
how we track patches applied across many different trees internally.
Works much better than using the upstream sha.

I would like to understand your "upstream enough" requirement. Why do
you need a tree that's stable before Linus pulls the changes?

Note that I am generally only rebasing as a last resort and typically
only very early in the rc cycle. It usually happens when I need to drop
a patch series that turned out to be unfixable in its current state.

And before everyone screams because I'm not supposed to be pushing stuff
that breaks, please realize that it is impossible to test all the
different types of hardware I have to merge drivers for. There is no
regression test suite or lab setup with anything resembling
comprehensive coverage. I test changes to the SCSI core code and do some
rudimentary testing on SAS and FC on x86_64. But that's really the best
I can do.

Even though most patches posted to linux-scsi get picked up by 0day,
more often than not they only get x86_64 build coverage. Whereas 0day
build failures on arm, mips, sparc32, whatever typically only get
reported after patches have been simmering in linux-next for a
while. Depends how busy 0day is.

Also, actual driver failures on platforms not officially supported and
tested by the controller vendor are only found after the fact. And most
of the time it's not a matter of reverting a single patch but
effectively dropping all of the patches in the series until they can be
reworked. Sometimes a workaround takes a week or two to deliver, and
people don't appreciate not being able to boot their systems in the
meantime. So that's why I generally drop the series instead.

I would love for every patch sent to linux-scsi to be bug free and
instantly build tested by 0day on every architecture.  And I would love
for hardware vendors to be more cognizant about architectures they don't
commercially support.  But reality is that things break frequently when
I merge big, complex driver update patch series.

As a result, the preference has been to have the flexibility to amend or
drop patches early in every cycle. It hasn't really been a problem
because there have been no downstream users of SCSI at all. I only
recently found out about your use case.

I'm pretty flexible about how to address this, there are a couple of
ways to go about it.

1. I could just always revert instead of dropping the patches. The
   downside is that we end up with a pretty messy history because, as I
   pointed out above, it's usually a matter of dropping tens of patches
   at a time and not reverting a single offending commit. In addition,
   having a messy history makes it harder on distro kernel people to
   track driver updates.

2. The other option is that I set up a scsi-staging tree where stuff can
   simmer for a bit and hopefully get some 0day coverage before getting
   shuffled over to scsi-queue. However, I do question how much actual
   real hardware coverage we'll get by having a SCSI tree that people
   would explicitly have to pull to test. As opposed to linux-next which
   at least gets some coverage by test farms and users.

3. The third option is that we pick a number like rc4 and I will promise
   not to rebase after that. We can see how that works out.

I'm open to ideas. The most important thing to me is that 0day and
linux-next are indispensable tools in my workflow given that I have no
way to personally test most of the code I merge. So it is imperative
that I have the ability to push code early because that's where I get
the bulk of my (non-SCSI-core) build and test coverage.

-- 
Martin K. Petersen	Oracle Linux Engineering
