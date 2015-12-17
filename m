Return-Path: <john.stultz@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 506A4A15
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Dec 2015 00:44:22 +0000 (UTC)
Received: from mail-yk0-f181.google.com (mail-yk0-f181.google.com
	[209.85.160.181])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 94ED8F3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Dec 2015 00:44:21 +0000 (UTC)
Received: by mail-yk0-f181.google.com with SMTP id p130so906951yka.1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 16 Dec 2015 16:44:21 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <30286.1450312325@warthog.procyon.org.uk>
References: <10141.1450179238@warthog.procyon.org.uk>
	<2151085.9YAhiz9GYL@wuerfel> <20151215141518.GE8574@piout.net>
	<CALAqxLUxXSDCt+LVdiqpgY2zw0zxRP3zB+mR1xCaEE8hgWaGCg@mail.gmail.com>
	<30286.1450312325@warthog.procyon.org.uk>
Date: Wed, 16 Dec 2015 16:44:20 -0800
Message-ID: <CALAqxLVb7dfeN-u07w3ai5V23iZpNi8krb0kji0iC1RuM9xn9Q@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
To: David Howells <dhowells@redhat.com>
Content-Type: text/plain; charset=UTF-8
Cc: Prarit Bhargava <prarit@redhat.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Miroslav Lichvar <mlichvar@redhat.com>
Subject: Re: [Ksummit-discuss] Leap second handling
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Dec 16, 2015 at 4:32 PM, David Howells <dhowells@redhat.com> wrote:
> John Stultz <john.stultz@linaro.org> wrote:
>
>> As for how to treat the certs, you're option #1 "Treat it as hh:mm:59" is
>> probably the closest to what the kernel does, since it repeats the 59th
>> second on the leapsecond.
>
> mktime64() appears to treat hh:mm:60 as the equivalent of the 0th second of
> the next minute simply by adding the seconds on last with no checking.
>
> I'm okay with implementing #1 or #2 for now (ie. treating as :59 of this
> minute or :00 of the next minute) with a comment in the code indicating that
> this is what we're doing.
>
> Should I have mktime64() handle it or should I handle it in my X.509 code
> though?  I favour the former as it's then a general solution that can be
> handled in a single place.  I could put the handling of 24:00:00 being
> equivalent of 00:00:00 of the next day there also.

I think having it handled in mktime64 sounds reasonable to me. But the
behavior should be very clearly documented there, and ideally match
the kernel's behavior.

Cc'ing in other time folks for their thoughts.

thanks
-john
