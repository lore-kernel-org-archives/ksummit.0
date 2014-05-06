Return-Path: <zohar@linux.vnet.ibm.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 35BAE82A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:22:18 +0000 (UTC)
Received: from e34.co.us.ibm.com (e34.co.us.ibm.com [32.97.110.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 41738201A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 17:22:17 +0000 (UTC)
Received: from /spool/local
	by e34.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
	Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<zohar@linux.vnet.ibm.com>; Tue, 6 May 2014 11:12:13 -0600
Received: from b03cxnp08025.gho.boulder.ibm.com
	(b03cxnp08025.gho.boulder.ibm.com [9.17.130.17])
	by d03dlp02.boulder.ibm.com (Postfix) with ESMTP id 2522B3E40040
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 11:12:11 -0600 (MDT)
Received: from d03av02.boulder.ibm.com (d03av02.boulder.ibm.com [9.17.195.168])
	by b03cxnp08025.gho.boulder.ibm.com (8.13.8/8.13.8/NCO v10.0) with
	ESMTP id s46HC3nt56426574
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 6 May 2014 19:12:11 +0200
Received: from d03av02.boulder.ibm.com (localhost [127.0.0.1])
	by d03av02.boulder.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP
	id s46HBcSG013780 for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 6 May 2014 11:11:38 -0600
Message-ID: <1399396272.9468.15.camel@dhcp-9-2-203-236.watson.ibm.com>
From: Mimi Zohar <zohar@linux.vnet.ibm.com>
To: Kees Cook <keescook@chromium.org>
Date: Tue, 06 May 2014 13:11:12 -0400
In-Reply-To: <CAGXu5jLpd4NUm5eOEmcbkHc1wNf+=Cr3vQYu5Zv_4Ho046fP2g@mail.gmail.com>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<CAGXu5j+oo0iga2AwyeH0OiW=LLWMyeDUDry7HpNrfv=O+bZd_Q@mail.gmail.com>
	<alpine.LNX.2.00.1405060901460.3969@pobox.suse.cz>
	<CAGXu5jKAcDrjUtrEdPjVY3dqYhX=UrZctH1-7=qRnGqaRcVcPw@mail.gmail.com>
	<1399382930.2237.16.camel@dabdike.int.hansenpartnership.com>
	<CAGXu5jLpd4NUm5eOEmcbkHc1wNf+=Cr3vQYu5Zv_4Ho046fP2g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [TECH TOPIC] live kernel patching
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, 2014-05-06 at 06:41 -0700, Kees Cook wrote: 
> On Tue, May 6, 2014 at 6:28 AM, James Bottomley
> <James.Bottomley@hansenpartnership.com> wrote:
> > On Tue, 2014-05-06 at 06:18 -0700, Kees Cook wrote:
> >> On Tue, May 6, 2014 at 12:05 AM, Jiri Kosina <jkosina@suse.cz> wrote:
> >> > On Mon, 5 May 2014, Kees Cook wrote:
> >> >
> >> >> I'm very interested in this, especially as it may relate to security
> >> >> exploit mitigation work, both in the sense of being able to arbitrarily
> >> >> patch the kernel against flaws, and to defend against attackers being
> >> >> able to ... er ... arbitrarily patch the kernel... :)
> >> >
> >> > :) Well, for performing the patching, the attacker would either have to be
> >> > able to modprobe module (kpatch, kgraft, ksplice) or kexec to a new kernel
> >> > (criu-based solution). In either case, the system would be owned anyway
> >> > already, independently on any live patching mechanism.
> >>
> >> Right -- this is the current limitation with this kind of thing. I'd
> >> like to have both arbitrarily module loading blocked and the ability
> >> to load generated modules at a later time. I'm hoping there can be
> >> some discussion around providing a verification process for the newly
> >> created modules (e.g. signing the module on a separate machine that
> >> has private key material, etc).
> >
> > This really belongs to the Secure Boot discussion not the live kernel
> > patching one ...

Anything that is added to the linux kernel needs to be measured and
appraised, before being applied.  Making sure there is a hook that does
this for live kernel patching is important. 

> > As you know, the problem has always been third party modules (what you
> > call "generated modules at a later time").  It's not really technical,
> > it's political: how do you arrive at the trusted key public key?  The
> > distros didn't want to be in the business of signing modules (or keys).
> > The Red Hat kernel generation process even destroys the in-kernel key,
> > so it can't be used to sign them (although a validated RH key with trust
> > rooted somewhere in the secure boot system could).  We've seen a lot of
> > "interesting" suggestions in this regard, like packaging the module up
> > into a windows like binary and getting Microsoft to sign it.  At the end
> > of the day, I think we need a gpg like trust model: the distros all
> > assign public trust to vendor keys and the administrator has to decide
> > whether they want to install that vendor key based on the computed trust
> > from all the distros (so no signing, just assignment of trust).

We're currently working on adding file signatures to packages (eg. rpm,
deb).  Assuming packages come signed, we would only need to load the
associated public key on a trusted _ima keyring (trusted _ima keyring
needs to be upstreamed).  The system owner would decide which 3rd public
keys they want to trust.  IMA-appraisal would enforce file integrity.

> I'd like to be careful to avoid UEFI-specific thinking when dealing
> with this. Module verification can also be done without signatures
> (e.g. using the LSM to make sure they load from a read-only device).
> Extending this so that a device with a known-good kernel environment
> (be it UEFI Secure Boot, Chrome OS verified mode, or booting from a
> CD-ROM) can extend itself with generated modules that the system owner
> trusts in some additional way. (This is likely just adding a key for
> module signing, but there's more to discuss: I don't want to have to
> have ALL modules signed, for example, if I can already trust the
> location where kernel-build-time modules are being loaded from, etc.)

IMA-apppraisal verifies file integrity based on policy.  You could
prevent files being appraised based on fsuuid.

dont_appraise func=BPRM_CHECK fsuuid=38b7a203-6763-4563-b1f8-4c1f557dc54f
appraise func=BPRM_CHECK fowner=0 appraise_type=imasig

thanks,

Mimi
