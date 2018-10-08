Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D2E3D735E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 17:06:00 +0000 (UTC)
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 79C437FC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Oct 2018 17:06:00 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Al Viro <viro@ZenIV.linux.org.uk>, Dave Airlie <airlied@gmail.com>
Date: Mon, 8 Oct 2018 17:05:58 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F7D409730@ORSMSX107.amr.corp.intel.com>
References: <1538861738.4088.5.camel@HansenPartnership.com>
	<1538861799.4088.6.camel@HansenPartnership.com>
	<CAPM=9tz3Z=vD6qWUL2boZGEAgMeC_o9euBXFu2V58RHOn6gR9g@mail.gmail.com>
	<20181007225613.GZ32577@ZenIV.linux.org.uk>
In-Reply-To: <20181007225613.GZ32577@ZenIV.linux.org.uk>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	LKML <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [PATCH 1/2] code-of-conduct: Fix the
 ambiguity about collecting email addresses
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Oct 08, 2018 at 08:25:35AM +1000, Dave Airlie wrote:

> This isn't a legally binding license or anything, but departing from
> the upstream wording makes it tricker to merge new upstream versions
> if they are considered appropriate.

The whole document is under 500 words, if we can manage merges of tens
of thousands of lines of code, this should be pretty easy by comparison.

Making it difficult to merge new upstream versions could also be considered
a positive thing.  Given the outcry about this version appearing with no
community discussion, I think folks will also be unhappy about finding some
future merge that just says "Update CoC to upstream 1.5".

-Tony
