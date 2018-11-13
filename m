Return-Path: <willy6545@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CEE2CA55
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Nov 2018 18:02:26 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 8449E75B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Nov 2018 18:02:26 +0000 (UTC)
Received: by mail-ot1-f52.google.com with SMTP id w25so11445501otm.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 13 Nov 2018 10:02:26 -0800 (PST)
MIME-Version: 1.0
From: Matthew Wilcox <willy6545@gmail.com>
Date: Tue, 13 Nov 2018 10:02:13 -0800
Message-ID: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
To: ksummit-discuss@lists.linuxfoundation.org
Content-Type: multipart/alternative; boundary="000000000000b8ee70057a8f9e31"
Subject: [Ksummit-discuss] [TOPIC] XArray
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

--000000000000b8ee70057a8f9e31
Content-Type: text/plain; charset="UTF-8"

Now that the XArray is in, it's time to make use of it. I've got a git tree
which converts every current user of the radix tree to the XArray as well
as converting some users of the IDA to the XArray.

The XArray may also be a great replacement for a list_head in your data
structure.

I can also talk about currently inappropriate uses for the XArray and what
I might do in future to make the XArray useful for more users.

--000000000000b8ee70057a8f9e31
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Now that the XArray is in, it&#39;s time to make use of i=
t. I&#39;ve got a git tree which converts every current user of the radix t=
ree to the XArray as well as converting some users of the IDA to the XArray=
.<div dir=3D"auto"><br></div><div dir=3D"auto">The XArray may also be a gre=
at replacement for a list_head in your data structure.</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">I can also talk about currently inappropriat=
e uses for the XArray and what I might do in future to make the XArray usef=
ul for more users.</div></div>

--000000000000b8ee70057a8f9e31--
