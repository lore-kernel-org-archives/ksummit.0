Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 064D1AAC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Oct 2018 22:03:23 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9AC3C6E0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  9 Oct 2018 22:03:22 +0000 (UTC)
Received: by mail-ot1-f44.google.com with SMTP id x4so1931475otg.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 09 Oct 2018 15:03:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAKON4OxHUoVQ3zso=avoGE35MwWnkGaU13R_qPaw9zAqMVCDxQ@mail.gmail.com>
	<6108593.JtmfA2IdsK@avalon>
	<CAKON4Owevjg=wyQrxJ4z7x=hUryKGhHkXB=htL5G6MhuruwZ-Q@mail.gmail.com>
	<CABVU7+t4VDg6p4Kq-P6U+epOOoeiy8E5XJ0gxDAJTyfW7h6Y5Q@mail.gmail.com>
	<20181008183423.4bdcaeea@coco.lan>
	<CABVU7+uQCcREk1V_SUve64BA8b=Qz0npUJwXgg=eae4H9++mdA@mail.gmail.com>
	<20181009070736.42b8fea5@coco.lan>
	<D9A3A892-FF4B-4A63-99C9-C29C58AB5AAC@fb.com>
In-Reply-To: <D9A3A892-FF4B-4A63-99C9-C29C58AB5AAC@fb.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 9 Oct 2018 15:03:10 -0700
Message-ID: <CAPcyv4hWMZkS0KMVihL5R99nQp6CAG3wkOfF2nWdVLq9w3bOcQ@mail.gmail.com>
To: Chris Mason <clm@fb.com>
Content-Type: text/plain; charset="UTF-8"
Cc: mchehab+samsung@kernel.org,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] New CoC and Brendan Eich
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Oct 9, 2018 at 9:53 AM Chris Mason <clm@fb.com> wrote:
>
> On 9 Oct 2018, at 6:07, Mauro Carvalho Chehab wrote:
>
> >> So, a company would fire maintainer for being conniving with an
> >> harassment
> >> or any other unacceptable behavior, right?!
> >>
> >> So, Developer A shouts racists words, maintainer C doesn't C the
> >> email.
> >> Developer B complains to the TAB against Developer A and Maintainer
> >> C.
> >
> > No. If you read the CoC carefully, you'll see that it doesn't
> > have anything saying that TAB would be taking any action against
> > Developer A. The only person that this CoC who would be punished,
> > on this CoC's "enforcement" section is the maintainer.
>
> The code of conduct asks maintainers to be involved in maintaining
> culture as well as code.  It does mention repercussions for maintainers,
> but it's important to apply some common sense here.  If you enable
> people to send in terrible code, someone is going to talk to you about
> your poor decisions.  If you're enabling people to violate the code of
> conduct, it's a good idea to sit down and talk about ways to improve the
> level of discourse in your subsystem.

I'd also add, it's clear that these situations can be messy and a
maintainer may not feel equipped, or have the emotional resources to
engage at all times. So I think reasonable way for a maintainer to
engage is to simply ask for help. At a minimum we need trusted people
in the community that are willing to be available to help out
contributors and fellow maintainers alike, and the TAB is tasked with
being available to help. That was the situation with the previous
code, this one is more explicit, but the intent is the same to have a
concerted effort and an escalation path to help keep development
discourse productive.
