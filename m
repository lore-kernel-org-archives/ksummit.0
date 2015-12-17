Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AAA39E57
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Dec 2015 00:32:08 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 207F2125
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 17 Dec 2015 00:32:08 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
In-Reply-To: <CALAqxLUxXSDCt+LVdiqpgY2zw0zxRP3zB+mR1xCaEE8hgWaGCg@mail.gmail.com>
References: <CALAqxLUxXSDCt+LVdiqpgY2zw0zxRP3zB+mR1xCaEE8hgWaGCg@mail.gmail.com>
	<10141.1450179238@warthog.procyon.org.uk>
	<2151085.9YAhiz9GYL@wuerfel> <20151215141518.GE8574@piout.net>
To: John Stultz <john.stultz@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <30285.1450312325.1@warthog.procyon.org.uk>
Date: Thu, 17 Dec 2015 00:32:05 +0000
Message-ID: <30286.1450312325@warthog.procyon.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] Leap second handling
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

John Stultz <john.stultz@linaro.org> wrote:

> As for how to treat the certs, you're option #1 "Treat it as hh:mm:59" is
> probably the closest to what the kernel does, since it repeats the 59th
> second on the leapsecond.

mktime64() appears to treat hh:mm:60 as the equivalent of the 0th second of
the next minute simply by adding the seconds on last with no checking.

I'm okay with implementing #1 or #2 for now (ie. treating as :59 of this
minute or :00 of the next minute) with a comment in the code indicating that
this is what we're doing.

Should I have mktime64() handle it or should I handle it in my X.509 code
though?  I favour the former as it's then a general solution that can be
handled in a single place.  I could put the handling of 24:00:00 being
equivalent of 00:00:00 of the next day there also.

David
