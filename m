Return-Path: <mst@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F0B84723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 04:42:07 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7154222C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 04:42:07 +0000 (UTC)
Date: Wed, 3 Aug 2016 07:42:02 +0300
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Andy Lutomirski <luto@amacapital.net>
Message-ID: <20160803073731-mutt-send-email-mst@kernel.org>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<CAPeXnHsPpvWaTh=Lv29t22UJ8N2VduAAgozpQ_CdeH4XoYwqEQ@mail.gmail.com>
	<CALCETrWDvwPrYiHE41Uhpz3m=-V=zJMLSUwBgEzVho=iRv4RhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALCETrWDvwPrYiHE41Uhpz3m=-V=zJMLSUwBgEzVho=iRv4RhQ@mail.gmail.com>
Cc: Josh Boyer <jwboyer@fedoraproject.org>, Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mark Brown <broonie@sirena.org.uk>
Subject: Re: [Ksummit-discuss] [TOPIC] Secure/verified boot and roots of
	trust
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 02, 2016 at 09:34:14PM -0700, Andy Lutomirski wrote:
> On Tue, Aug 2, 2016 at 8:32 PM, Matthew Garrett <mjg59@coreos.com> wrote:
> > On Tue, Aug 2, 2016 at 7:58 PM, Andy Lutomirski <luto@amacapital.net> wrote:
> >>  - Appeasing the Secure Boot deities.  AFAIK this specifically
> >> requires that we verify the kernel and its modules using a combination
> >> of EFI-supplied and distro keys.
> >
> > Eh not quite. The rules are basically that if a Microsoft-signed
> > object can be used to compromise other operating systems, Microsoft
> > may unilaterally blacklist that object. Allowing arbitrary module
> > loading or arbitrary kexec clearly makes it straightforward to simply
> > use a signed Linux boot chain to then boot a compromised version of
> > any other operating system, defeating the point of Secure Boot.
> 
> > Distro
> > keys are used for module signing because that's the easiest way to
> > handle it (sign them during build and then discard the key),
> 
> With my module hashing patches, that'll be even simpler.  The kernel
> image will contain a list of SHA256 hashes of in-tree .ko files and
> will accept those files.

Hmm. I kind of like ability to build and add modules to a running
kernel. And I think some distros might use it too, updating modules
without updating the kernel (doesn't work if you discard the key,
obviously).

> > UEFI keys
> > are used to appease some manufacturers (they can ship their
> > binary-only drivers signed with a key that's in firmware) and shim
> > keys are used to allow users to sign their own modules.
> 
> Hmm.  Would it be okay if a physically present user could subvert it?
> For example, if a physically present user typed "insecure" into a
> bootloader command line and thus turned off signature verification?

Typically already possible with firmware menus.

> >>  - Bootloader supplies public keys and policy to the kernel.
> >
> > The main problem here is the lack of a standardised way of passing
> > data from bootloader to kernel. We can't just append a CPIO to the
> > initramfs because using arbitrary initramfs is a reasonable policy for
> > many usecases. Having a secure architecture-independent communications
> > channel between the bootloader and the kernel would be helpful in
> > various ways.
> 
> Indeed.  I wonder if we could design such a thing?  Or at least
> something that requires only minimal arch-specific work.
> _______________________________________________
> Ksummit-discuss mailing list
> Ksummit-discuss@lists.linuxfoundation.org
> https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
