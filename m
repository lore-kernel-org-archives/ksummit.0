Return-Path: <prvs=0213222162=clm@fb.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0040370A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 15:02:32 +0000 (UTC)
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com
	[67.231.153.30])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 146692026D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 May 2014 15:02:29 +0000 (UTC)
Message-ID: <537628ED.1020208@fb.com>
Date: Fri, 16 May 2014 11:04:13 -0400
From: Chris Mason <clm@fb.com>
MIME-Version: 1.0
To: NeilBrown <neilb@suse.de>, Dan Williams <dan.j.williams@gmail.com>
References: <CAA9_cmdc86KLimJXEVQCJiBH_YM1wWDfpe78EttWwQUW7Re8aA@mail.gmail.com>
	<20140516125611.06633446@notabene.brown>
In-Reply-To: <20140516125611.06633446@notabene.brown>
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit
Cc: Dan J Williams <dan.j.williams@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] [nomination] Move Fast and Oops
 Things
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 05/15/2014 10:56 PM, NeilBrown wrote:
> On Thu, 15 May 2014 16:13:58 -0700 Dan Williams
> <dan.j.williams@gmail.com> wrote:
> 
>> What would it take and would we even consider moving 2x faster
>> than we are now?
> 
> Hi Dan, you seem to be suggesting that there is some limit other
> than "competent engineering time" which is slowing Linux "progress"
> down.
> 
> Are you really suggesting that?  What might these other limits be?
> 
> Certainly there are limits to minimum gap between conceptualisation
> and release (at least one release cycle), but is there really a
> limit to the parallelism that can be achieved?

I haven't compared the FB commit rates with the kernel, but I'll
pretend Dan's basic thesis is right and talk about which parts of the
facebook model may move faster than the kernel.

The facebook is pretty similar to the way the kernel works.  The merge
window lasts a few days and the major releases are every week, but
overall it isn't too far away.

The biggest difference is that we have a centralized tool for
reviewing the patches, and once it has been reviewed by a specific
number of people, you push it in.

The patch submission tool runs the patch through lint and various
static analysis to make sure it follows proper coding style and
doesn't include patterns of known bugs.  This cuts down on the review
work because the silly coding style mistakes are gone before it gets
to the tool.

When you put in a patch, you have to put in reviewers, and they get a
little notification that your patch needs review.  Once the reviewers
are happy, you push the patch in.

The biggest difference: there are no maintainers.  If I want to go
change the calendar tool to fix a bug, I patch it, get someone else to
sign off and push.

All of which is my way of saying the maintainers (me included) are the
biggest bottleneck.  There are a lot of reasons I think the maintainer
model fits the kernel better, but at least for btrfs I'm trying to
speed up the patch review process and use patchwork more effectively.

Facebook controls risk with new features using gatekeepers in the
code.  That way we can beta test larger changes against an expanding
group of unsuspecting people without turning it on for everyone at once.

It's also much easier to accept risk when you have complete control
over deployment.  facebook.com rolls out twice a day, which is
basically a stable tree cherry-picked from tip, and there are plenty
of chances to fix problems.

Anrdoid/iphone releases can't be controlled the same way, and so they
have longer testing periods.

- -chris
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)
Comment: Using GnuPG with Thunderbird - http://www.enigmail.net/

iQIcBAEBAgAGBQJTdijtAAoJEATCFrcofBuh6KsP/jnA+wDUA2KW1LTdRV8JGuLp
dgguLD8H+KN4s4ft7JmLUq+fCgCtI5Y4HUXc/BTog+HY6rae7Wnkfp5EKjkFO770
RsOFdI+MxyfqQmIrhHuV7jhO69joal89vLhW1nsAYe6C8+UrHs2YFgPkzbsqbM46
1jn4k9ot6+Msgah0ZPt2U20R2RQooMe9dIJR2LofpB2MWQMzkojJnB7CLD6Kg9PH
Hjjc4EdC/7/lccw6KndJv4N2+uDAJmdP7xIdeEvS5PxS+e6/0nY4/W+XgxDYWoVQ
rrTFkS+PJMRKqfW16qrqJNB6rjpeF2ou9Y3XsKLJYwiErhwDo1+wFisF7GpxMY2G
ruD0Bn/RpNBCtCOpM9uNGW1cK5pbAgBegUrf3G6woUC/2UcOOm3L26dvhWk4ht62
y3BwS/cFMb7q/1iLvwbEMgImdFULQRwnlkmu3dHxBaaZKL9kN0Qa+YvU4qxoCV6R
YIzkz4XjWItlmZhknmw+3WXDbFUp237X3E6sN+EJ7J2LcBcMhvYcknXLc+WgiwI5
ycoP0G8Yd9LSZ8o+rraElBHT+RgIRuNLzeP8vKaPvdVeLbuC4hhCtN0gwGvKpwjr
VZoWnSFqEqWFTpSMdfGEIWoqOERfB64WAfcvF1Y7Z/nnjxEGxwHFehCE4cdZ++ZG
8OFW7b4yI67zQyghofRQ
=zNEp
-----END PGP SIGNATURE-----
