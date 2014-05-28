Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 32CA69C3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 17:44:46 +0000 (UTC)
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 3CEB32023E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 17:44:45 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Mark Brown <broonie@sirena.org.uk>, Mimi Zohar <zohar@linux.vnet.ibm.com>
Date: Wed, 28 May 2014 17:44:41 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F328205B1@ORSMSX114.amr.corp.intel.com>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140524111927.GA3455@katana>
	<alpine.LFD.2.00.1405271920580.2055@localhost.localdomain>
	<4700397.FLxRVChBLf@vostro.rjw.lan>
	<CAKMK7uEquB=bv5jj=K-8Nv_9S2Y8qh2=3eKjJSjgR4Vrn9fbaA@mail.gmail.com>
	<20140528143246.GV15585@mwanda>
	<CAKMK7uGkURkwFdQQhrs1oi5Hpfk4SCuH0jv6x07vJ6cyAfEvwQ@mail.gmail.com>
	<20140528163902.GA5099@sirena.org.uk>
	<1401295862.13546.109.camel@dhcp-9-2-203-236.watson.ibm.com>
	<20140528173553.GE5099@sirena.org.uk>
In-Reply-To: <20140528173553.GE5099@sirena.org.uk>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

> There's a world of difference between thanking people for review and a
> detailed account of all the changes made in every single iteration of
> the review.

This is already covered in Documentation/SubmittingPatches. Quoting
lines 585-592 (see last sentence):

One good use for the additional comments after the "---" marker is for
a diffstat, to show what files have changed, and the number of
inserted and deleted lines per file.  A diffstat is especially useful
on bigger patches.  Other comments relevant only to the moment or the
maintainer, not suitable for the permanent changelog, should also go
here.  A good example of such comments might be "patch changelogs"
which describe what has changed between the v1 and v2 version of the
patch.

-Tony
