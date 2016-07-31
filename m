Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 22EA18E3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 03:08:17 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 828D3A1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 03:08:16 +0000 (UTC)
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6V33m6u124914 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 23:08:15 -0400
Received: from e28smtp01.in.ibm.com (e28smtp01.in.ibm.com [125.16.236.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24gr457acj-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 30 Jul 2016 23:08:15 -0400
Received: from localhost
	by e28smtp01.in.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Sun, 31 Jul 2016 08:38:11 +0530
Received: from d28relay02.in.ibm.com (d28relay02.in.ibm.com [9.184.220.59])
	by d28dlp03.in.ibm.com (Postfix) with ESMTP id BCC1F1258026
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 08:41:09 +0530 (IST)
Received: from d28av05.in.ibm.com (d28av05.in.ibm.com [9.184.220.67])
	by d28relay02.in.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6V37v3713041976 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 08:37:57 +0530
Received: from d28av05.in.ibm.com (localhost [127.0.0.1])
	by d28av05.in.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6V385VH025017 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 08:38:07 +0530
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: "Luis R. Rodriguez" <mcgrof@kernel.org>
Date: Sat, 30 Jul 2016 23:08:01 -0400
In-Reply-To: <20160730163626.GP3296@wotan.suse.de>
References: <20160716005213.GL30372@sirena.org.uk>
	<1469544138.120686.327.camel@infradead.org>
	<14209.1469636040@warthog.procyon.org.uk>
	<1469636881.27356.70.camel@HansenPartnership.com>
	<1469637367.27356.73.camel@HansenPartnership.com>
	<1469648220.23563.15.camel@linux.vnet.ibm.com>
	<CALCETrXWVTmbuUa-d7EH2kGRZM+HCiqje11AqxWm7ntd5fjLDg@mail.gmail.com>
	<20160728165728.GR4541@io.lakedaemon.net>
	<1469830256.23563.200.camel@linux.vnet.ibm.com>
	<CALCETrUiYghc5uq9GHQRT--n15PBimhJwHA0TwgNqGxsbRKaFw@mail.gmail.com>
	<20160730163626.GP3296@wotan.suse.de>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1469934481.23563.274.camel@linux.vnet.ibm.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sa, 2016-07-30 at 18:36 +0200, Luis R. Rodriguez wrote:
> On Fri, Jul 29, 2016 at 03:25:09PM -0700, Andy Lutomirski wrote:
> > On Fri, Jul 29, 2016 at 3:10 PM, Mimi Zohar <zohar@linux.vnet.ibm.com> wrote:
> > > On Do, 2016-07-28 at 16:57 +0000, Jason Cooper wrote:
> > >> Hi Andy,
> > >>
> > >> On Wed, Jul 27, 2016 at 01:09:37PM -0700, Andy Lutomirski wrote:
> > >> ...
> > >> > I would like someone to explain why using the keyring mechanism for
> > >> > this in the first place is a good idea.
> > >> >
> > >> > As far as I can tell, the design goals of "keys trusted by the kernel
> > >> > for modules, firmware, etc" are:
> > >> >
> > >> >  - Keys are added at build time or, according to potentially
> > >> > system-specific rules, at boot time.
> > >> >
> > >> >  - Keys should specify what they're trusted *for*.
> > >>
> > >> Well, I'd argue that keys should specify what they are *intended* for by
> > >> the keyholder.  A useful security system could further restrict the key
> > >> as needed.
> > >
> > > We've already started.  Currently the kernel_read_file() and family of
> > > functions provide the LSM hooks needed for verifying file signatures of
> > > files read by the kernel.  The kernel_read_file_id enumeration is used
> > > to differentiate between callers.  Based on this enumeration, the
> > > *intended* for could be defined.  It would make sense to extend the IMA
> > > policy language to support *intended* for.
> > >
> > 
> > Having kernel_read_file know the purpose is a big step in the right
> > direction, although, as I think I and others have pointed out, just an
> > enum is insufficient -- for firmware, at least, the *name* is
> > relevant.

> The name is passed for firmware, the wrapper kernel_read_file_from_path()
> is used. So if we wanted an LSM extension on name I think we can do that
> on kernel_read_file_from_path() ?

It shouldn't make a difference whether kernel_read_file() is called
directly, or the kernel_read_file_by_path/fd() are called.  The pathname
is accessible from the "file" argument.

> > But this is almost orthogonal to what I'm talking about.  I'm saying
> > that, before seriously considering any extensions to using keyrings to
> > decide which files are okay for kernel_read_file() and similar, we
> > should first consider whether using keyrings *at all* for this is a
> > reasonable long-term approach.
> 
> It sounds like an LSM decision ?
> 
> Of course, part of the issue with signing / keyring stuff here is
> module signing wasn't designed as an LSM, I've discussed with David
> the possibility of LSM'ifying kernel signing infrastructure, with
> a lot of works it seems possible. With LSM stacking this then should
> group up together in a sensible way. Then for instance eventually
> module signing and firmware singing could be stackable LSM decisions,
> and not a kconfig final decision -- as they are today. To me though
> having module signing or firmware signing be LSM'ifable is not a hard
> requirement given its just ways to do things, so its not a requirement,
> architecturally its just better to have long term. So when I say this
> sounds like an LSM decision I'm projecting on to how this question
> of keyrings then becomes a stackable LSM question.
> 
> > Elsewhere in this thread, Jason Cooper
> > mentioned keyholders.  For this type of verification key, the holder
> > isn't even on the same machine as the kernel on which
> > kernel_read_file() is called.
> 
> When you run a distro kernel your kernel key holder isn't on the
> same machine either. Then for that shiny mobile OS that runs Linux,
> they use LoadPin LSM, so they have opted out of the keyholder/keyring
> thing but punted it in another way.
> 
> In the stackable LSM context, what is not possible then?
> 
> > Sure, one might want to configure a system so IMA is used for
> > kernel_read_file(), and one might want to configure IMA to use
> > keyrings, but that's far from being the only sensible configuration.
> 
> If we LSM'ify it all, then I think anything should be possible so long
> as we pass on to the LSM enough context. Since we already pass context
> of how something is read that should help. Path seems like the next
> target ? Anything else ?

One issue that repeatedly comes up, at least for IMA, is key management.
Will the keys be used solely for code provenance or to also provide
version control?

Mimi
