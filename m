Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1A60EE7C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 18:14:59 +0000 (UTC)
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6D491756
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  3 Sep 2019 18:14:58 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id w6so1004319oie.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 03 Sep 2019 11:14:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190830031720.GA7490@mit.edu> <20190830135857.GF7013@google.com>
	<CAPM=9tymLW8dS_3OD0J9mvSMWpmcs3WWBEQS=gtzX0Zyz-umHg@mail.gmail.com>
	<20190902222240.GE3367@mit.edu>
	<574c0ccd-730a-eada-966c-58f5de7c9477@redhat.com>
	<CAHk-=wh1v7FK_VctdRo3fsuHJU4Dm95siC=vM9seuuapBgdg+A@mail.gmail.com>
	<20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
In-Reply-To: <20190903172708.qrvaad2paze6ifhz@chatter.i7.local>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 3 Sep 2019 11:14:46 -0700
Message-ID: <CAPcyv4gMAMG6ejwjyzVahE0hGLyf7Rcq+7QZ-SzYsvFW65YdVA@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
	Laura Abbott <labbott@redhat.com>, Bjorn Helgaas <helgaas@kernel.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 3, 2019 at 10:27 AM Konstantin Ryabitsev
<konstantin@linuxfoundation.org>
[..]
> So:
>
> - would a tool with such functionality be useful, or would every
>   maintainer prefer to continue doing their own thing (in slightly
>   different ways)?

Yes, I would consider switching to this. The kernel.org patchwork-bot
+ the getpatchwork tool [1] does some of this for me, but lossless
patch reception, sharing rules and triggers for patches (not  just
git-hooks) is a powerful superset.

[1]: https://github.com/getpatchwork/git-pw
