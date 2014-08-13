Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D7A0F9CB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 17:29:25 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[212.209.106.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3EAA02031D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 17:29:24 +0000 (UTC)
From: "Bird, Tim" <Tim.Bird@sonymobile.com>
To: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, "josh@joshtriplett.org"
	<josh@joshtriplett.org>
Date: Wed, 13 Aug 2014 19:29:21 +0200
Message-ID: <F5184659D418E34EA12B1903EE5EF5FD0130D4AC5B90@seldmbx02.corpusers.net>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: [Ksummit-discuss] RFC: Kernel tinification - kernel config reduction
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

I'd like to raise an issue, ahead of the kernel summit, on the topic of red=
ucing
kernel config options. (Or, at least, reducing the combinatorial explosion =
effect
for config options).

Earlier this year when some patches were submitted to make the network
stack more configurable, there was some pushback, due (in part) to the
introduction of more kernel config options.
See http://thread.gmane.org/gmane.linux.kernel/1696910
I think it is reasonable to be concerned over the testability of myriad con=
fig
options.

In the past, there have been efforts to curb the number of kernel config
options, but since we now stand at about 15,000 options throughout the
kernel, this seems like a battle we've mostly given up on.

I propose that we remove or hide a lot of the configuration options related
to size, and instead focus on size profiles. When someone wants to build a
minimal Linux system, they don't really want to manually trim down every
Linux sub-system.  The more common development case is that they want
a fully minimal Linux system, except for one or two areas where they want
some flexibility in features.  I propose that we tie most of the options th=
at
are currently in the kernel for size reasons to a single or a few meta-opti=
ons:
e.g. CONFIG_SMALL, CONFIG_TINY, CONFIG_RIDICULOUS.  These
different meta-config options can get better testing, and this will help cu=
rb
the proliferation of size-related config options (and the resulting test
combination explosion for those individual options.)

Note that this would be for sub-system related (feature or size) config opt=
ions,
and not driver-related config options.  Obviously, you have to have drivers
for the hardware you plan to run on.

Optimally it would be nice to have the ability to configure a small system,=
 and
then "back off" of the tiny config in a particular area (say networking).
I believe this would yield a much more tractable system for building small
systems with Linux, than the current situation.

I'd like to discuss implementation ideas for this in the hallway track at K=
S.

Thoughts?=20
 -- Tim=
