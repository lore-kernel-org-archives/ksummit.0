Return-Path: <dhowells@redhat.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C9565F0A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Dec 2015 11:34:03 +0000 (UTC)
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 575C8183
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 15 Dec 2015 11:34:00 +0000 (UTC)
From: David Howells <dhowells@redhat.com>
To: ksummit-discuss@lists.linuxfoundation.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-ID: <10140.1450179238.1@warthog.procyon.org.uk>
Content-Transfer-Encoding: quoted-printable
Date: Tue, 15 Dec 2015 11:33:58 +0000
Message-ID: <10141.1450179238@warthog.procyon.org.uk>
Subject: [Ksummit-discuss] Leap second handling
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I know it's a bit late for the KS, but should we alter the interpretation =
of
the time-as-seconds-since-1970 in the kernel to include leap seconds?

The reason I ask is that we have to deal with X.509 certificates in the ke=
rnel,
and the certificate can have dates encoded using GeneralizedTime ASN.1 obj=
ects.
These are formatted as per ISO 8601.  ISO 8601 encodes leap seconds as hh:=
mm:60
- so it's possible that I can see this in cert I have to deal with, and as=
 such
I must permit it.  I turn the date and time components into a time64_t wit=
h
mktime64() - but that doesn't know about leap seconds, however.

So the question is how to deal with it.  I can see three obvious ways:

 (1) Treat it the same as hh:mm:59.

 (2) Treat it the same as hh:mm+1:00, rolling over the carry through to th=
e
     year if necessary.

 (3) Assign specific time_t values to leap seconds in mktime64().  There's=
 a
     table of them here:

	https://en.wikipedia.org/wiki/Leap_second

     It wouldn't be hard to do within just the kernel, but this would put =
the
     kernel at odds with userspace to the tune of nearly half a minute at =
the
     current time.  It might be sufficient to just fix the libc's in users=
pace
     - but you can bet there's someone somewhere who checks that seconds
     doesn't exceed 59.

     The kernel would also need to tell libc whether or not the time value=
 it
     gets includes leap seconds.

Any thoughts?

David
