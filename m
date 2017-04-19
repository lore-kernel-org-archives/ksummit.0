Return-Path: <corbet@lwn.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 85E98BD8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 22:36:39 +0000 (UTC)
Received: from ms.lwn.net (ms.lwn.net [45.79.88.28])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 86CA3FF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Apr 2017 22:36:38 +0000 (UTC)
Date: Wed, 19 Apr 2017 16:36:36 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: Mauro Carvalho Chehab <mchehab@infradead.org>
Message-ID: <20170419163636.6747a232@lwn.net>
In-Reply-To: <20170418181506.30de0470@vento.lan>
References: <CA+55aFydhKTGAFfqog0gRwKAQnxjjMnM-bKEaOwYbEKNjfRwGg@mail.gmail.com>
	<s5hd1c9wl4b.wl-tiwai@suse.de>
	<CA+55aFzo0dPdEYvGBRvpoUQ1ZGsDUMO+n1dv2fDNvP4Y-=31zQ@mail.gmail.com>
	<20170418181506.30de0470@vento.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
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

On Tue, 18 Apr 2017 18:15:06 -0300
Mauro Carvalho Chehab <mchehab@infradead.org> wrote:

> There is one particular issue that occurs to me, although I'm not sure
> if it would fit on the new "maintainer summit" format: it is related
> to how to group documentation. Also, this is actually Jon's call, but
> I suspect that he may want to hear comments from the others.

I could imagine talking about a few documentation issues, including
interactions with the rest of the kernel.  Who has responsibility for
taking docs patches is often not clear, leading to multiple maintainers
picking them up or conflicts between trees.

We're also a ways into the Sphinx transition; I would be most curious to
hear how others think it is going and whether/how the process should
continue.

jon
