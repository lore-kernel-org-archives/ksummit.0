Return-Path: <william.kucharski@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 405B9A5E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 22:56:45 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFE9881B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 14 Nov 2018 22:56:44 +0000 (UTC)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (Mac OS X Mail 12.1 \(3445.101.1\))
From: William Kucharski <william.kucharski@oracle.com>
In-Reply-To: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
Date: Wed, 14 Nov 2018 15:56:37 -0700
Content-Transfer-Encoding: quoted-printable
Message-Id: <0AB62846-5A8B-4487-A4F9-1322B2B6E19B@oracle.com>
References: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
To: Matthew Wilcox <willy6545@gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] XArray
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



> On Nov 13, 2018, at 11:02 AM, Matthew Wilcox <willy6545@gmail.com> =
wrote:
>=20
> Now that the XArray is in, it's time to make use of it. I've got a git =
tree which converts every current user of the radix tree to the XArray =
as well as converting some users of the IDA to the XArray.
>=20
> The XArray may also be a great replacement for a list_head in your =
data structure.
>=20
> I can also talk about currently inappropriate uses for the XArray and =
what I might do in future to make the XArray useful for more users.

I hope you'll also cover multi-order usage, e.g. for huge page size =
support in the page cache.

Thanks!
    -- Bill=
