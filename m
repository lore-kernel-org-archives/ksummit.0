Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 11F3A7D6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Oct 2014 00:03:32 +0000 (UTC)
Received: from e32.co.us.ibm.com (e32.co.us.ibm.com [32.97.110.150])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A186C1FB59
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Oct 2014 00:03:31 +0000 (UTC)
Received: from /spool/local
	by e32.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Sun, 12 Oct 2014 18:03:31 -0600
Received: from b03cxnp08025.gho.boulder.ibm.com
	(b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id 78E053E4003F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Oct 2014 18:03:28 -0600 (MDT)
Received: from d03av02.boulder.ibm.com (d03av02.boulder.ibm.com [9.17.195.168])
	by b03cxnp08025.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id s9D03SP922413554
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 13 Oct 2014 02:03:28 +0200
Received: from d03av02.boulder.ibm.com (localhost [127.0.0.1])
	by d03av02.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s9D03QIA010460 for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Oct 2014 18:03:28 -0600
Message-ID: <1413158605.14699.46.camel@dhcp-9-2-203-236.watson.ibm.com>
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 12 Oct 2014 20:03:25 -0400
In-Reply-To: <CALCETrVVSd_pTBP3ghn=oroNqrxPYRev-xcQ+KnF8kcZZiwB7A@mail.gmail.com>
References: <trinity-2d36367c-59c5-44af-8737-fb503e10af38-1411376491498@3capp-gmx-bs07>
	<CALCETrWdPmSCUkb-neH5ssNmxzsqY0rioQq5qMc2ne7J0JxVLg@mail.gmail.com>
	<543428E1.7050702@linux.vnet.ibm.com>
	<20141007180209.GD10432@obsidianresearch.com>
	<5434352A.6080403@linux.vnet.ibm.com>
	<CALCETrVVSd_pTBP3ghn=oroNqrxPYRev-xcQ+KnF8kcZZiwB7A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: keyrings@linux-nfs.org, jarkko.sakkinnen@linux.intel.com,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Stefan Berger <stefanb@linux.vnet.ibm.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	LSM List <linux-security-module@vger.kernel.org>,
	tpmdd-devel@lists.sourceforge.net,
	James Morris <james.l.morris@oracle.com>,
	linux-ima-devel@lists.sourceforge.net, trousers-tech@lists.sourceforge.net
Subject: Re: [Ksummit-discuss] [tpmdd-devel] [TrouSerS-tech] TPM MiniSummit
 @ LinuxCon Europe
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2014-10-07 at 11:59 -0700, Andy Lutomirski wrote: 
> On Tue, Oct 7, 2014 at 11:47 AM, Stefan Berger
> <stefanb@linux.vnet.ibm.com> wrote:
> > On 10/07/2014 02:02 PM, Jason Gunthorpe wrote:
> >>
> >> On Tue, Oct 07, 2014 at 01:54:41PM -0400, Stefan Berger wrote:
> >>
> >>> Why add the complexity of swapping of authenticated sessions and keys
> >>> into the kernel if you can handle this in userspace? You need a library
> >>> that is aware of the number of key slots and slots for sessions in the
> >>> TPM and swaps them in at out when applications need them. Trousers is
> >>> such a library that was designed to cope with the limitations of the
> >>> device and make its functionality available to all applications that
> >>> want to access it.
> >>
> >> How does trousers work with the kernel when the kernel is also using
> >> TPM key slots for IMA/keyring/whatever?
> >
> >
> > IIRC it only uses a single key slot and swaps all keys in and out of that
> > one. If the kernel was to fill up all key (and sessions) slots, TSS would
> > probably not work anymore.
> >
> > Another argument for the TSS is that you also wouldn't want applications to
> > swap out each others keys and sessions and leave them out or assume that
> > they would always cleanup if they do not currently need them.
> 
> That argument seems backwards.  If you're worried about applications
> (or trousers itself!) failing to clean up, then shouldn't the kernel
> driver clean up orphaned key slots itself?

As I understand it, this isn't an issue of "cleaning up", but of
mediating the limited resources, by "swapping" keys in and out as
needed.

Mimi

> Also, what protects the kernel from having slot 0 get stomped on or,
> worse, inappropriately used by a misbehaving or malicious user
> program?  Is the authorization session mechanism really secure against
> intentional abuse by users of the same machine?
> 
> --Andy
