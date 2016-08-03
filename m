Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id F11C678D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 23:23:07 +0000 (UTC)
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 626FACD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Aug 2016 23:23:07 +0000 (UTC)
Received: by mail-ua0-f182.google.com with SMTP id j59so163625601uaj.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 16:23:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1470265316.4176.207.camel@decadent.org.uk>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<27174.1470221030@warthog.procyon.org.uk>
	<CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
	<1470265316.4176.207.camel@decadent.org.uk>
From: Andy Lutomirski <luto@amacapital.net>
Date: Wed, 3 Aug 2016 16:22:45 -0700
Message-ID: <CALCETrXj=fSM2ahO-QSBse4rzv3f6D8_vet+J0cftMzODS0ePg@mail.gmail.com>
To: Ben Hutchings <ben@decadent.org.uk>
Content-Type: text/plain; charset=UTF-8
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

On Wed, Aug 3, 2016 at 4:01 PM, Ben Hutchings <ben@decadent.org.uk> wrote:
> On Wed, 2016-08-03 at 09:46 -0700, Andy Lutomirski wrote:
> [...]
>> And it gets rid of the IMO extremely nasty temporary key.  I
>> personally think that reproducible builds would add considerable value
>> to many use cases, and we currently can't simultaneously support
>> reproducible builds and Secure Boot without a big mess involving
>> trusted parties, and the whole point of reproducible builds is to
>> avoid needed to trust the packager.
> [...]
>
> You need that trusted party to supply a signature for the kernel, so
> why is it so much worse to have them do that for the modules as well?
>

For Chromium-like setups, I don't think the kernel is signed as such
-- it's verified (by hash?  by loading from trusted storage?) and
executed.

> As you may be aware, I'm dealing with this in Debian by putting
> detached signatures into the source package that builds signed
> binaries.  The two package build processes are each reproducible (aside
> from a recently discovered dependence on whether /bin/sh is bash or
> dash).

That is a nifty solution, although don't you have to put a detached
signature into the source package for every single module?  Limiting
it to just one signature for the kernel seems like it would be a win.

--Andy
