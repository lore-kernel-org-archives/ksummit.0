Return-Path: <BATV+dfffdda140a42dd4a603+4988+infradead.org+mchehab@bombadil.srs.infradead.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 522D8B88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 11:25:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [65.50.211.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A7CE3106
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 20 Apr 2017 11:25:49 +0000 (UTC)
Date: Thu, 20 Apr 2017 08:25:35 -0300
From: Mauro Carvalho Chehab <mchehab@infradead.org>
To: Jonathan Corbet <corbet@lwn.net>
Message-ID: <20170420082535.18dc0607@vento.lan>
In-Reply-To: <20170419163636.6747a232@lwn.net>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<20170418181506.30de0470@vento.lan>
	<20170419163636.6747a232@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>, Dave Airlie <airlied@linux.ie>,
	Doug Ledford <dledford@redhat.com>, David Miller <davem@davemloft.net>
Subject: Re: [Ksummit-discuss] "Maintainer summit" invitation discussion
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Em Wed, 19 Apr 2017 16:36:36 -0600
Jonathan Corbet <corbet@lwn.net> escreveu:

> On Tue, 18 Apr 2017 18:15:06 -0300
> Mauro Carvalho Chehab <mchehab@infradead.org> wrote:
> 
> > There is one particular issue that occurs to me, although I'm not sure
> > if it would fit on the new "maintainer summit" format: it is related
> > to how to group documentation. Also, this is actually Jon's call, but
> > I suspect that he may want to hear comments from the others.  
> 
> I could imagine talking about a few documentation issues, including
> interactions with the rest of the kernel.  Who has responsibility for
> taking docs patches is often not clear, leading to multiple maintainers
> picking them up or conflicts between trees.

I suspect that conflicts are hard to avoid, as often patch series
need to touch both code and Documentation/.

I guess keeping the MAINTAINERS updated to reflect who is responsible
for each file under Documentation is one important step to minimize
conflicts.

Btw, that's one of the reasons why I believe that one book
per subsystem would work better than spreading the subsystem
documentation among several different books: once such book is
added at the main Documentation/index.rst and Documentation/conf.py, 
the subsystem maintainer can take care of all documentation patches
for such book without risking to cause conflicts with other trees.

Thanks,
Mauro
