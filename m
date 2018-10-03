Return-Path: <Boaz.Harrosh@netapp.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3AF71AA5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Oct 2018 12:46:56 +0000 (UTC)
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0051.outbound.protection.outlook.com [104.47.40.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EC368710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Oct 2018 12:46:54 +0000 (UTC)
From: "Harrosh, Boaz" <Boaz.Harrosh@netapp.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Wed, 3 Oct 2018 12:46:52 +0000
Message-ID: <MWHPR06MB28965FBD1C86181DD7986C9FEEE90@MWHPR06MB2896.namprd06.prod.outlook.com>
References: <MWHPR06MB2896E4C6CE916007BCB66305EEE90@MWHPR06MB2896.namprd06.prod.outlook.com>,
	<20181003110644.GA12451@kroah.com>
In-Reply-To: <20181003110644.GA12451@kroah.com>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] ZUFS - Zero Copy User-Mode
 FileSystem - One year Later
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Greg KH <gregkh@linuxfoundation.org> Wrote:

>> On Wed, Oct 03, 2018 at 09:35:54AM +0000, Harrosh, Boaz wrote:
>> Linux Plumbers 2018: ZUFS - Zero Copy User-Mode FileSystem - One year La=
ter
<snap>

> Why wouldn't this be better discussed at the file-system-specific
> conference?=A0 Or have you already done that this year?
>=20
> thanks,
> greg k-h
=20
Yes I have presented at LSF. It was a full discussion. And, 6 month ago, wa=
s
very not ready for upstream at that time.

Last plumbers my talk raised a lot of interest, was then at the POC stage.

I would like to present the current status, when code is much more complete
and actually ready for clients computers in stability and fixture set.

And try to draw in more community interest and participation. In what I bel=
ieve
is a very Interesting project. Some of the Technics I present are beyond pu=
re FS
and demonstrate a new way to communicate with user-mode servers, taking int=
o
account cpu-locality and NUMA awareness.

[That said it is all about me sleeping on guard and submitting a plumbers t=
alk proposal
 to late. So it was suggested I might ask about a Kernel track
]

Thanks
Boaz
