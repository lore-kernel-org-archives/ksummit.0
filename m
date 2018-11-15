Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E7524AC7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 23:03:04 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F0D3F836
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 23:03:03 +0000 (UTC)
Date: Thu, 15 Nov 2018 16:03:02 -0700
From: Jonathan Corbet <corbet@lwn.net>
To: Linus Walleij <linus.walleij@linaro.org>
Message-ID: <20181115160302.428a037b@lwn.net>
In-Reply-To: <CACRpkdabmP3EhQGiRcg_aJ75U2hpjuLe+uH36i46O+Z=wE2H_Q@mail.gmail.com>
References: <CAFhKne8YNpGZbXk-KTN1mA9WBW1=NSVBo7RU0rYX9pbVgfj_Sg@mail.gmail.com>
	<CACRpkdabmP3EhQGiRcg_aJ75U2hpjuLe+uH36i46O+Z=wE2H_Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
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

On Wed, 14 Nov 2018 11:02:54 +0100
Linus Walleij <linus.walleij@linaro.org> wrote:

> > The XArray may also be a great replacement for a list_head in your data structure.
> >
> > I can also talk about currently inappropriate uses for the XArray and what I
> > might do in future to make the XArray useful for more users.  
> 
> This sounds like awesome.
> 
> I hope there will be an LWN article coming out of this for those of us
> who cannot participate in person.

Just FWIW, I was there, but I suspect I'll not be making an article out
of it; quite a bit of the material was stuff that we've covered before.
The video should be available in a week or two for those who want to
catch up on the rest.

Thanks,

jon
