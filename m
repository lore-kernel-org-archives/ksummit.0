Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1C78F8DD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 21:56:56 +0000 (UTC)
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 97CD4118
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 21:56:55 +0000 (UTC)
Received: by oiev193 with SMTP id v193so82364153oie.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Aug 2015 14:56:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <16035.1439324695@warthog.procyon.org.uk>
References: <20436.1438090619@warthog.procyon.org.uk>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<CALCETrVbTEf0rKKYOmNoHB2n0MpSgpY8jvOGXPnV=+KPxEpFKw@mail.gmail.com>
	<1438097471.5441.152.camel@HansenPartnership.com>
	<CALCETrVPf9gN92iC+vtKOOBY0GpzAnZuKpEMMgZzU-uXAM1qMQ@mail.gmail.com>
	<1438099839.5441.165.camel@HansenPartnership.com>
	<1438100102.26913.183.camel@infradead.org>
	<CALCETrWwMrd-ntkjiYf0-E+YjeVfM-sT7W_PFXr-mOPc268Vbw@mail.gmail.com>
	<30361.1438101879@warthog.procyon.org.uk>
	<CALCETrXa_hw6tF2SekuQEYd=AHoWW_88dU_LgfXz6ziuRQpO5g@mail.gmail.com>
	<1438111168.26913.189.camel@infradead.org>
	<CALCETrVVtcno1k8L_+LWuBApayUNFJmfG11MJV1hDo_0UjVRBg@mail.gmail.com>
	<1438121016.5441.233.camel@HansenPartnership.com>
	<16035.1439324695@warthog.procyon.org.uk>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 11 Aug 2015 14:56:35 -0700
Message-ID: <CALCETrV3LZu+e5Atwe2DUYUBhRnu-yEc-aguuco94jnPA2YYxg@mail.gmail.com>
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

On Tue, Aug 11, 2015 at 1:24 PM, David Howells <dhowells@redhat.com> wrote:
> Hi James,
>
> The top patch here:
>
>         http://git.kernel.org/cgit/linux/kernel/git/dhowells/linux-fs.git/log/?h=modsign-pkcs7-2
>
> allows demand loading of keys based on their SKID into a special keyring from
> which they get erased after an arbitrary 3 minutes of existence.  This key can
> then be used to verify a signature instead of using the primary system keyring
> used for module signature checking.
>
> Building on this, a driver could have a SKID compiled into it which could then
> be used to load a key for request_firmware() to use in verifying the blobs
> that that driver requires.
>

Who signs the vendor key?

Why are we bothering loading device vendor keys into a keyring in the
first place?  Why not just have an API to request firmware either
signed by a literal key provided by the driver *or* whatever keys the
system trusts in general for firmware signing?

--Andy
