Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5C811413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 15:31:51 +0000 (UTC)
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EB52E1F7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 15:31:50 +0000 (UTC)
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u6VFTID5087408 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 11:31:50 -0400
Received: from e28smtp07.in.ibm.com (e28smtp07.in.ibm.com [125.16.236.7])
	by mx0a-001b2d01.pphosted.com with ESMTP id 24grd2t01g-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 11:31:50 -0400
Received: from localhost
	by e28smtp07.in.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Sun, 31 Jul 2016 21:01:47 +0530
Received: from d28relay04.in.ibm.com (d28relay04.in.ibm.com [9.184.220.61])
	by d28dlp02.in.ibm.com (Postfix) with ESMTP id 22304394004E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 21:01:44 +0530 (IST)
Received: from d28av05.in.ibm.com (d28av05.in.ibm.com [9.184.220.67])
	by d28relay04.in.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u6VFU8Ch17957162 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 21:00:08 +0530
Received: from d28av05.in.ibm.com (localhost [127.0.0.1])
	by d28av05.in.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id
	u6VFVfHb012660 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 31 Jul 2016 21:01:43 +0530
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 31 Jul 2016 11:31:38 -0400
In-Reply-To: <CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
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
	<1469934481.23563.274.camel@linux.vnet.ibm.com>
	<CALCETrWq0UZ176EKrp2jNkjFFn17twb8ZvfGKtRdD5E=iFAnBw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Message-Id: <1469979098.23563.300.camel@linux.vnet.ibm.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Jason Cooper <jason@lakedaemon.net>
Subject: Re: [Ksummit-discuss] Last minute nominations: mcgrof and toshi
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sa, 2016-07-30 at 20:09 -0700, Andy Lutomirski wrote:
> On Jul 30, 2016 8:08 PM, "Mimi Zohar" <zohar@linux.vnet.ibm.com> wrote:
> >
> > On Sa, 2016-07-30 at 18:36 +0200, Luis R. Rodriguez wrote:
> > > On Fri, Jul 29, 2016 at 03:25:09PM -0700, Andy Lutomirski wrote:
> > > > On Fri, Jul 29, 2016 at 3:10 PM, Mimi Zohar <zohar@linux.vnet.ibm.com>
> wrote:
> > > > > On Do, 2016-07-28 at 16:57 +0000, Jason Cooper wrote:
> > > > >> Hi Andy,
> > > > >>
> > > > >> On Wed, Jul 27, 2016 at 01:09:37PM -0700, Andy Lutomirski wrote:
> > > > >> ...
> > > > >> > I would like someone to explain why using the keyring mechanism
> for
> > > > >> > this in the first place is a good idea.
> > > > >> >
> > > > >> > As far as I can tell, the design goals of "keys trusted by the
> kernel
> > > > >> > for modules, firmware, etc" are:
> > > > >> >
> > > > >> >  - Keys are added at build time or, according to potentially
> > > > >> > system-specific rules, at boot time.
> > > > >> >
> > > > >> >  - Keys should specify what they're trusted *for*.
> > > > >>
> > > > >> Well, I'd argue that keys should specify what they are *intended*
> for by
> > > > >> the keyholder.  A useful security system could further restrict
> the key
> > > > >> as needed.
> > > > >
> > > > > We've already started.  Currently the kernel_read_file() and family
> of
> > > > > functions provide the LSM hooks needed for verifying file
> signatures of
> > > > > files read by the kernel.  The kernel_read_file_id enumeration is
> used
> > > > > to differentiate between callers.  Based on this enumeration, the
> > > > > *intended* for could be defined.  It would make sense to extend the
> IMA
> > > > > policy language to support *intended* for.
> > > > >
> > > >
> > > > Having kernel_read_file know the purpose is a big step in the right
> > > > direction, although, as I think I and others have pointed out, just an
> > > > enum is insufficient -- for firmware, at least, the *name* is
> > > > relevant.
> >
> > > The name is passed for firmware, the wrapper
> kernel_read_file_from_path()
> > > is used. So if we wanted an LSM extension on name I think we can do that
> > > on kernel_read_file_from_path() ?
> >
> > It shouldn't make a difference whether kernel_read_file() is called
> > directly, or the kernel_read_file_by_path/fd() are called.  The pathname
> > is accessible from the "file" argument.
> >
> 
> What happens if a symlink is involved?

For callers of kernel_read_file_by_path(), like firmware, we could pass
the pathname, but for the other callers of kernel_read_file/_by_fd() we
could use d_absolute_path().

Mimi
