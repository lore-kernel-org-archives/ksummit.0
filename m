Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E1FC12FA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 11 May 2014 04:14:53 +0000 (UTC)
Date: Sun, 11 May 2014 00:14:49 -0400
From: Jason Cooper <jason@lakedaemon.net>
To: Levente Kurusa <levex@linux.com>,
	Teodora =?utf-8?B?QsSDbHXFo8SD?= <teobaluta@gmail.com>,
	Konstantin Ryabitsev <mricon@kernel.org>
Message-ID: <20140511041449.GP12708@titan.lakedaemon.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

All,

I recently came across a patch series attempting to implement encoding
kernel oops into a QR code [1].  The QR code is then dumped to the
framebuffer.  The QR code is a URL of the form:

  https://oops.kernel.org/?qr=3D<base64 compressed oops>

This proposal is interesting because it fundamentally changes the way
users report bugs to the kernel community.  First and foremost, it makes
it much easier.

  1) oops occurs
  2) user pulls out phone, scans QR code
      - at this point, the oops is recorded on the server.  Nothing more
        is required of the user.

  optionally:

  3) user fills out a minimal web form
      - Name
      - email address (do you want to receive emails re this oops?)
      - what were you doing when it occurred?
      - is it repeatable?

I recall discussing this with some RedHat devs at the 2012 KS, so I know
there is some interest in this capability.

I'd be interested in having this as a tech topic for several reasons.
First, to raise awareness of the project among the kernel community
(where did all these oops reports start coming from?).  Second, to
solicit opinions on how to feed those oops reports into the community.
And last, to sit down with the maintainer of oops.kernel.org and scope
out what work needs to be done to support this on the server side.

Of course, all of this assumes the patches get accepted.  There's been
no rejections so far, though. :)

If accepted, I would expect the authors to be the ones leading the
discussion (Levente, Teodora).

Nominations:

Levente Kurusa <levex@linux.com>
Teodora B=C4=83lu=C5=A3=C4=83 <teobaluta@gmail.com>

Relevant folks:

Konstantin Ryabitsev <mricon@kernel.org>
Jason Cooper <jason@lakedaemon.net>		(auto-nominated)
...


thx,

Jason.

[1] https://lkml.org/lkml/2014/3/17/525
