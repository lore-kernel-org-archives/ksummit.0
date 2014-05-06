Return-Path: <James.Bottomley@HansenPartnership.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B74C88AF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 18:35:01 +0000 (UTC)
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id B2A0A201BA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  6 May 2014 18:35:00 +0000 (UTC)
Message-ID: <1399401297.2237.71.camel@dabdike.int.hansenpartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Kees Cook <keescook@chromium.org>
Date: Tue, 06 May 2014 11:34:57 -0700
In-Reply-To: <CAGXu5jLpd4NUm5eOEmcbkHc1wNf+=Cr3vQYu5Zv_4Ho046fP2g@mail.gmail.com>
References: <alpine.LNX.2.00.1405022123320.29834@pobox.suse.cz>
	<CAGXu5j+oo0iga2AwyeH0OiW=LLWMyeDUDry7HpNrfv=O+bZd_Q@mail.gmail.com>
	<alpine.LNX.2.00.1405060901460.3969@pobox.suse.cz>
	<CAGXu5jKAcDrjUtrEdPjVY3dqYhX=UrZctH1-7=qRnGqaRcVcPw@mail.gmail.com>
	<1399382930.2237.16.camel@dabdike.int.hansenpartnership.com>
	<CAGXu5jLpd4NUm5eOEmcbkHc1wNf+=Cr3vQYu5Zv_4Ho046fP2g@mail.gmail.com>
Content-Type: text/plain; charset="ISO-8859-15"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org
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
> >
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
> 
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

I don't believe any of the projects prescribe the security method. For
the patch methods (kgraft, ksplice and kpatch) you just have to be able
to load a module with the patches; for CRIU you have to be able to kexec
the new kernel.  In a secure environment, obviously, either of these
(module load or kexec) is subject to checking.  In the patch projects,
we won't define what that is, we'll just say that's what we need to do.

James
