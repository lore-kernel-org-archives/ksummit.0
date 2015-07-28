Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 53045484
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 22:44:49 +0000 (UTC)
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 839D98D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 22:44:48 +0000 (UTC)
Received: by lbbyj8 with SMTP id yj8so84384240lbb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 28 Jul 2015 15:44:46 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <2834.1438123171@warthog.procyon.org.uk>
References: <1438102755.5441.184.camel@HansenPartnership.com>
	<1438096213.5441.147.camel@HansenPartnership.com>
	<20436.1438090619@warthog.procyon.org.uk>
	<29850.1438100240@warthog.procyon.org.uk>
	<31492.1438110696@warthog.procyon.org.uk>
	<1438120439.5441.229.camel@HansenPartnership.com>
	<2834.1438123171@warthog.procyon.org.uk>
From: Andy Lutomirski <luto@amacapital.net>
Date: Tue, 28 Jul 2015 15:44:27 -0700
Message-ID: <CALCETrUTJB_jc1q+6ubA5qzJULHUAA1tcVtf=yCva_EBzbC=pQ@mail.gmail.com>
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

On Tue, Jul 28, 2015 at 3:39 PM, David Howells <dhowells@redhat.com> wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> wrote:
>
>> Um, wouldn't the hash be in the module ... and the module is validated
>> at load time by whatever kernel mechanism we're using.
>
> I think we're talking at cross-purposes.  The point was:
>
>     (6) Should module signatures contain the module name - to be matched
>         against the modinfo structure after the signature is checked?
>
> I'm asking about whether a *module* signature should be tied to the name of
> the *module* it is signing.  Nothing to do with firmware.
>

I vote "no" because I can't see a threat model under which it matters.
If you can sign a module at all, then root can load it regardless of
what it's called.  Nonroot can't supply the module under a forged
name, regardless of whether the signature covers the name.

Kexec may be a different story.

--Andy
