Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E41AD78D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 16:47:16 +0000 (UTC)
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2399C2A3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 16:47:16 +0000 (UTC)
Received: by mail-vk0-f43.google.com with SMTP id x130so150508612vkc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 09:47:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <27174.1470221030@warthog.procyon.org.uk>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<27174.1470221030@warthog.procyon.org.uk>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 3 Aug 2016 09:46:54 -0700
Message-ID: <CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset=UTF-8
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

On Aug 3, 2016 3:43 AM, "David Howells" <dhowells@redhat.com> wrote:
>
> Andy Lutomirski <luto@amacapital.net> wrote:
>
> > I got module hashing working.  It ended up being fairly
> > straightforward.
>
> It's not particularly difficult to use a flat hash table (assuming that's what
> you've done), however, it's redundant, less efficient when not being used and
> makes the build process more complicated.

I think it's less complexity than the current automatic generation of
the key.  And yes, I have it working right now in a branch.

>
> To elaborate:
>
>  (1) We have to keep the module signing by keys stuff in the kernel along with
>      a supply of keys for it to use *anyway*.  Yes, we might then be able to
>      drop the build-time transient key, but that doesn't account for very much
>      image space or memory.

I object to the existence of the build-time key.  It completely breaks
reproducible builds.

>
>  (2) The x86_64 Fedora RPMs for the kernel running on my desktop right now
>      contain 8783 modules.  Assuming we have a SHA256 hash for each of those
>      (to keep UEFI compatibility), that's 274KiB - assuming you have just a
>      simple contiguous array of hashes with no metadata of any sort.

Agreed, it's annoyingly large.  This isn't the end of the world for a
couple of reasons.  We could swap it out if we cared about it.  We
could also use a hash tree, although that would further complicate the
build process, albeit not by a vast amount.

>
>      Add to this approx 1135 firmware binaries for another 35KiB of space.
>

Firmware wouldn't be covered by this mechanism.  It can't: firmware
can be updated without updating the kernel.

>
>      Now, you can alleviate this in various ways:
>

>
>  (3) If someone adds or updates a firmware blob, you can't simply add a new
>      hash to the table without rebuilding your kernel.  So you need to fall
>      back to using a key-based signature for this.
>

As above, firmware isn't affected.

>
>  (5) The build process gets more complicated.  You can't do the hashing
>      procedure until after the builder has had a chance to strip the modules.
>      You then *have* to rebuild/alter the kernel image after the hashing
>      procedure has completed, whether you bake in one monolithic hash table or
>      demand load it.

That's solvable in any number of ways.  I intend to implement at least
one solution to this problem.

>
>      It's easier to do the signing procedure as the kernel image doesn't need
>      to be modified.
>
> I don't see a compelling argument for why we'd want to do module hashing at
> all, given that we have to have the signature checking mechanism around anyway
> for various reasons.

I think that, for the Secure Boot usecase, we actually wouldn't need
the signature checking mechanism at all.  Firmware signature checking
in-kernel is important for some chain-of-trust use cases but AFAIK not
for Secure Boot for standard desktop distros.

And it gets rid of the IMO extremely nasty temporary key.  I
personally think that reproducible builds would add considerable value
to many use cases, and we currently can't simultaneously support
reproducible builds and Secure Boot without a big mess involving
trusted parties, and the whole point of reproducible builds is to
avoid needed to trust the packager.

The only real issue I'm seeing is the large size of the table for
distros.  I'll implement a hash tree and fix it at the cost forcing
the .ko files to be regenerated after any kernel changes.
