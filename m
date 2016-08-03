Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F344A89C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 10:43:54 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4F2621B2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 10:43:54 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <27173.1470221030.1@warthog.procyon.org.uk>
Date: Wed, 03 Aug 2016 11:43:50 +0100
Message-ID: <27174.1470221030@warthog.procyon.org.uk>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Josh Boyer <jwboyer@fedoraproject.org>,
	Jason Cooper <jason@lakedaemon.net>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

Andy Lutomirski <luto@amacapital.net> wrote:

> I got module hashing working.  It ended up being fairly
> straightforward.

It's not particularly difficult to use a flat hash table (assuming that's what
you've done), however, it's redundant, less efficient when not being used and
makes the build process more complicated.

To elaborate:

 (1) We have to keep the module signing by keys stuff in the kernel along with
     a supply of keys for it to use *anyway*.  Yes, we might then be able to
     drop the build-time transient key, but that doesn't account for very much
     image space or memory.

 (2) The x86_64 Fedora RPMs for the kernel running on my desktop right now
     contain 8783 modules.  Assuming we have a SHA256 hash for each of those
     (to keep UEFI compatibility), that's 274KiB - assuming you have just a
     simple contiguous array of hashes with no metadata of any sort.

     Add to this approx 1135 firmware binaries for another 35KiB of space.

     Assuming you bake this into the kernel image, that increases both the
     image size and the memory usage by more than a quarter of a Meg - and,
     due to the nature of the data, it cannot be compressed.

     [Note that using signatures on modules and firmware blobs does also
      require at least this much space on the *medium*, but it's (i)
      distributed and (ii) may in some cases get lost in the fs block size,
      and the amount you require inside the initrd image is automatically kept
      small.]

     Now, you can alleviate this in various ways:

     (a) You could demand-load the entire table as one lump and have a single
     	 hash in the kernel to cover the table.  This means (i) having some
     	 mechanism to do the loading before any modules or firmware is loaded,
     	 and (ii) getting the table into the initrd/initramfs image.

     (b) You could split the table up, but then the kernel needs a hash for
     	 each segment.  You could have a hash-of-table-hashes that the kernel
     	 loads (and would also need a hash for), but this means demand-loading
     	 still, and now the mechanism is getting more complicated.

	 If you did do this, you could split the table up mechanically, but
	 then mkinitrd would have to be able to work out which hash segments
	 in needs to load a particular module/firmware blob (it could do this
	 by hashing the blob and then scanning the tables for a match, then
	 selecting that table).

	 Or you could try and anticipate at build time what modules the
	 initial boot process would need and split the table that way.

     (c) You could bake in just the module/firmware hashes that you think the
     	 boot process might need and then discard those and load the full
     	 table 

 (3) If someone adds or updates a firmware blob, you can't simply add a new
     hash to the table without rebuilding your kernel.  So you need to fall
     back to using a key-based signature for this.

 (4) Unless you want to implement demand loading of the table, you can't
     discard it, which means it eats resources.  If you demand load each time
     you load a module and then discard after, that's much less efficient than
     key checking.

     You could alleviate this by not discarding the table during boot, but
     only initiate discarding at the end of the boot process since most of the
     module loading is done by that point.

 (5) The build process gets more complicated.  You can't do the hashing
     procedure until after the builder has had a chance to strip the modules.
     You then *have* to rebuild/alter the kernel image after the hashing
     procedure has completed, whether you bake in one monolithic hash table or
     demand load it.

     It's easier to do the signing procedure as the kernel image doesn't need
     to be modified.

I don't see a compelling argument for why we'd want to do module hashing at
all, given that we have to have the signature checking mechanism around anyway
for various reasons.

Firmware hashing might be a bit simpler since then you don't need a bunch of
detached signatures installing along with the firmware.

David
