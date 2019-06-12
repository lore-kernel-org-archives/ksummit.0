Return-Path: <kstewart@linuxfoundation.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BC8F2279D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jun 2019 20:33:52 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2CA1379
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jun 2019 20:33:52 +0000 (UTC)
Received: by mail-lf1-f54.google.com with SMTP id r15so13227136lfm.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 12 Jun 2019 13:33:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190612085405.6045d95d@lwn.net>
In-Reply-To: <20190612085405.6045d95d@lwn.net>
From: Kate Stewart <kstewart@linuxfoundation.org>
Date: Wed, 12 Jun 2019 15:33:36 -0500
Message-ID: <CAG_66ZTemPnVpjgj3jgM+Ks9L--UkpW1KV5JOoCV0rAXDpqx0A@mail.gmail.com>
To: Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="UTF-8"
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 12, 2019 at 9:56 AM Jonathan Corbet <corbet@lwn.net> wrote:
>
> What could be more fun than talking about kernel documentation?  Things we
> could get into:
>
>  - The state of the RST transition, what remains to be done, whether it's
>    all just useless churn that makes the documentation worse, etc.
>
>  - Things we'd like to improve in the documentation toolchain.
>
>  - Overall organization of Documentation/ and moving docs when the need
>    arises.  It seems I end up fighting about this more than just about
>    anything else, but I think it's important to organize our docs for the
>    convenience of the people using them.
>
>  - The ultimate vision for kernel docs (for now).  RST conversion and
>    imposing some organization are important, but they will not,
>    themselves, give us a coherent set of documentation.  What can we do to
>    have documentation that is useful, current, and maintainable, rather
>    than the dusty attic we have now?

Also,  it would be great if we could talk about cleaning up the
documentation licensing, so it too can have its licenses be
automatically detected.   :-)

Kate
