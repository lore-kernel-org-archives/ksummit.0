Return-Path: <ard.biesheuvel@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7D78D1029
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jun 2019 10:07:56 +0000 (UTC)
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0FCE4623
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Jun 2019 10:07:55 +0000 (UTC)
Received: by mail-it1-f170.google.com with SMTP id m3so1865817itl.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Jun 2019 03:07:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190530060727.GA31283@mit.edu>
	<20190603183050.GB2456@sirena.org.uk>
In-Reply-To: <20190603183050.GB2456@sirena.org.uk>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 7 Jun 2019 12:07:44 +0200
Message-ID: <CAKv+Gu_TrH4z0s10nhuBJROjDx+o1DVhixz_wUsZ7NbbqqUbCg@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Satya Tangirala <satyat@google.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Inline Encryption Support
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, 3 Jun 2019 at 20:31, Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, May 30, 2019 at 02:07:27AM -0400, Theodore Ts'o wrote:
>
> > We=E2=80=99ve sent out an RFC patchset to add support for inline encryp=
tion to
> > the block subsystem, UFS driver, f2fs, and fscrypt
> > (https://www.spinics.net/lists/linux-block/msg40330.html).  We=E2=80=99=
ll
> > discuss our approach including:
>
> > How the filesystem communicates an encryption key to inline encryption
> > hardware for each struct bio it submits.  How to add support for
> > inline encryption to storage drivers.  Support for layered devices
> > like device mapper.  A software crypto fallback.  How this work can
> > make future encryption tasks cleaner - like metadata encryption,
> > file-based encryption on removable storage and the possibility of
> > unifying how fscrypt, dm-crypt, and eCryptfs implement encryption.
> > like device mapper.  A software crypto fallback.  How this work can
> > make future encryption tasks cleaner - like metadata encryption,
> > file-based encryption on removable storage and the possibility of
> > unifying how fscrypt, dm-crypt, and eCryptfs implement encryption.
>
> There was some related work done by Linaro on this, specifically for
> adding support for offloading ESSIV in dm-crypt using crypto engines
> (rather than something directly in block hardware) through the existing
> crypto API.  It does seem like something where there's hardware out
> there but no clear idea how to implement support for it in the kernel,
> the big blockers there were IIRC benchmarking requirements and in the
> case of ESSIV handling the fact that everything is in dm-crypt at
> present.

Yeah. There's a bit of a debate whether having separate drivers for
storage/network on the one hand and async crypto on the other hand can
scale up sufficiently in performance, and what we're bound to see more
of is things like this, for storage as well as networking.
Interestingly, that might still mean a smart NIC with a wimpy core
that offloads the crypto to an ASIC but from the OS pov, it is all
done by the hardware.
