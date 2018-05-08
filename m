Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D247C5A7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 02:39:39 +0000 (UTC)
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0130.outbound.protection.outlook.com [104.47.32.130])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 715C618A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  8 May 2018 02:39:38 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Mark Brown <broonie@kernel.org>
Date: Tue, 8 May 2018 02:39:36 +0000
Message-ID: <20180508023934.GB8514@sasha-vm>
References: <20180501194450.GD10479@thunk.org>
	<20180501200019.GA7397@sasha-vm> <20180501205448.GE10479@thunk.org>
	<20180501211551.GI2714@sirena.org.uk>
	<CAKMK7uHjA27K8y-kwYFyhLy3cSkJJw8Oe1gP=3hZXdfxcWAcNQ@mail.gmail.com>
	<20180502194632.GB18390@sasha-vm> <20180503020550.GP2714@sirena.org.uk>
	<20180503031000.GC29205@thunk.org>
	<0276fcda-0385-8f22-dbdb-e063f7ed8bbe@roeck-us.net>
	<20180503224217.GR2714@sirena.org.uk>
In-Reply-To: <20180503224217.GR2714@sirena.org.uk>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E851300F49D9D54EA7E19779A19A7A12@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Greg KH <gregkh@linuxfoundation.org>, "w@1wt.eu" <w@1wt.eu>
Subject: Re: [Ksummit-discuss] bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, May 04, 2018 at 07:42:17AM +0900, Mark Brown wrote:
>On Wed, May 02, 2018 at 08:52:29PM -0700, Guenter Roeck wrote:
>
>> As for -next, me and others stopped reporting bugs in it, because when w=
e do
>> we tend to get flamed for the "noise". Is anyone aware (or cares) that m=
ips
>> and nds32 images don't build ? Soaking clothes in an empty bathtub won't=
 make
>> them wet, and bugs in code which no one builds, much less tests or uses,=
 won't
>> be found.
>
>You've been flamed for testing -next?  That's not been my experience and
>frankly it's pretty horrifying that it's happening.  Testing is pretty
>much the whole point of -next existing in the first place so you have to
>wonder why people are putting their trees there if they don't want
>testing.  I have seen a few issues with people reporting bugs on old
>versions of -next but otherwise...

This is just wrong, what else is -next for?

FWIW, our (MSFT) testing folks should now be reporting issues they see
on our -next testing pipeline directly to LKML. There's not much volume
there given that the 0-day bot catches most of the issues anyways, but
we sometimes see odd regressions given that no one else seems to test
Linux on Hyper-V but us :)=
