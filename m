Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0190E409
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 17:04:19 +0000 (UTC)
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2687B11B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 17:04:18 +0000 (UTC)
Received: by lafd3 with SMTP id d3so62247645laf.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 10:04:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <30361.1438101879@warthog.procyon.org.uk>
References: <20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<CALCETrVbTEf0rKKYOmNoHB2n0MpSgpY8jvOGXPnV=+KPxEpFKw@mail.gmail.com>
	<1438097471.5441.152.camel@HansenPartnership.com>
	<CALCETrVPf9gN92iC+vtKOOBY0GpzAnZuKpEMMgZzU-uXAM1qMQ@mail.gmail.com>
	<1438099839.5441.165.camel@HansenPartnership.com>
	<1438100102.26913.183.camel@infradead.org>
	<CALCETrWwMrd-ntkjiYf0-E+YjeVfM-sT7W_PFXr-mOPc268Vbw@mail.gmail.com>
	<30361.1438101879@warthog.procyon.org.uk>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 28 Jul 2015 10:03:57 -0700
Message-ID: <CALCETrXa_hw6tF2SekuQEYd=AHoWW_88dU_LgfXz6ziuRQpO5g@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset=UTF-8
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

On Tue, Jul 28, 2015 at 9:44 AM, David Howells <dhowells@redhat.com> wrote:
> Andy Lutomirski <luto@amacapital.net> wrote:
>
>> I'd really like to replace "the system trusted keyring" with
>> purpose-specific lists of keys.  There are keys we trust to sign
>> modules, there are keys we trust to sign kexec things, there will be
>> keys to trust to sign firmware for any device, etc.
>
> I have some patches to restrict what a key is permitted to do - see the top
> few patches here:
>
>         http://git.kernel.org/cgit/linux/kernel/git/dhowells/linux-fs.git/log/?h=fwsign-pkcs7
>
> This involves marking the X.509 certs with the intended use case (or relying
> on the existing CA stuff for key-signing keys).

This will require that we take any firmware vendor's key and rewrap it
somehow into a new X.509 blob with a key usage constraint.

Can't we just track this stuff in the kernel without adding yet
another dependency on X.509?

--Andy
