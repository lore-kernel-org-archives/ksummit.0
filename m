Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D07CE409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:44:44 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5D223D5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 16:44:44 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CALCETrWwMrd-ntkjiYf0-E+YjeVfM-sT7W_PFXr-mOPc268Vbw@mail.gmail.com>
References: <CALCETrWwMrd-ntkjiYf0-E+YjeVfM-sT7W_PFXr-mOPc268Vbw@mail.gmail.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<CALCETrVbTEf0rKKYOmNoHB2n0MpSgpY8jvOGXPnV=+KPxEpFKw@mail.gmail.com>
	<1438097471.5441.152.camel@HansenPartnership.com>
	<CALCETrVPf9gN92iC+vtKOOBY0GpzAnZuKpEMMgZzU-uXAM1qMQ@mail.gmail.com>
	<1438099839.5441.165.camel@HansenPartnership.com>
	<1438100102.26913.183.camel@infradead.org>
To: Andy Lutomirski <luto@amacapital.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <30360.1438101879.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 28 Jul 2015 17:44:39 +0100
Message-ID: <30361.1438101879@warthog.procyon.org.uk>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Luis Rodriguez <mcgrof@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Kyle McMartin <jkkm@jkkm.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Firmware signing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Andy Lutomirski <luto@amacapital.net> wrote:

> I'd really like to replace "the system trusted keyring" with
> purpose-specific lists of keys.  There are keys we trust to sign
> modules, there are keys we trust to sign kexec things, there will be
> keys to trust to sign firmware for any device, etc.

I have some patches to restrict what a key is permitted to do - see the to=
p
few patches here:

	http://git.kernel.org/cgit/linux/kernel/git/dhowells/linux-fs.git/log/?h=3D=
fwsign-pkcs7

This involves marking the X.509 certs with the intended use case (or relyi=
ng
on the existing CA stuff for key-signing keys).

I do put all the keys into one keyring on the basis that each key will be =
used
once and won't be added multiple times through separate X.509 certs that g=
ive
different usage restrictions for the same key.  Given this, having just on=
e
keyring works fine.

David
