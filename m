Return-Path: <keescook@google.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E0CDE723
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 05:26:32 +0000 (UTC)
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 29625FB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  4 Aug 2016 05:26:32 +0000 (UTC)
Received: by mail-wm0-f47.google.com with SMTP id q128so471542103wma.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Aug 2016 22:26:32 -0700 (PDT)
MIME-Version: 1.0
Sender: keescook@google.com
In-Reply-To: <CALCETrXj=fSM2ahO-QSBse4rzv3f6D8_vet+J0cftMzODS0ePg@mail.gmail.com>
References: <CALCETrXTusbj3vTQ=DmyiYG-ZqYOtHXD6rQpY-4+qtqsKmoD4g@mail.gmail.com>
	<27174.1470221030@warthog.procyon.org.uk>
	<CALCETrU2qPO8Bu5wtaiKkYHgdpV3dL+Q5P+8YZLNSm3Ekn9sTw@mail.gmail.com>
	<1470265316.4176.207.camel@decadent.org.uk>
	<CALCETrXj=fSM2ahO-QSBse4rzv3f6D8_vet+J0cftMzODS0ePg@mail.gmail.com>
From: Kees Cook <keescook@chromium.org>
Date: Wed, 3 Aug 2016 22:26:29 -0700
Message-ID: <CAGXu5jJxObcLXb+S8bq6jGa_xWtDUX2Z=8Jo-Mzy_qsLZBxDxg@mail.gmail.com>
To: Andy Lutomirski <luto@amacapital.net>
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

On Wed, Aug 3, 2016 at 4:22 PM, Andy Lutomirski <luto@amacapital.net> wrote:
> On Wed, Aug 3, 2016 at 4:01 PM, Ben Hutchings <ben@decadent.org.uk> wrote:
>> On Wed, 2016-08-03 at 09:46 -0700, Andy Lutomirski wrote:
>> [...]
>>> And it gets rid of the IMO extremely nasty temporary key.  I
>>> personally think that reproducible builds would add considerable value
>>> to many use cases, and we currently can't simultaneously support
>>> reproducible builds and Secure Boot without a big mess involving
>>> trusted parties, and the whole point of reproducible builds is to
>>> avoid needed to trust the packager.
>> [...]
>>
>> You need that trusted party to supply a signature for the kernel, so
>> why is it so much worse to have them do that for the modules as well?
>>
>
> For Chromium-like setups, I don't think the kernel is signed as such
> -- it's verified (by hash?  by loading from trusted storage?) and
> executed.

The kernel (and command line) are in a single partition with a signed
hash which the bootloader verifies before running the kernel.

-Kees

-- 
Kees Cook
Brillo & Chrome OS Security
