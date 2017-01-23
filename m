Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 790DD2C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 10:02:57 +0000 (UTC)
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE28212D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 10:02:56 +0000 (UTC)
Received: by mail-wm0-f68.google.com with SMTP id r126so25173374wmr.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 23 Jan 2017 02:02:56 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
References: <CAGXu5j+nVMPk3TTxLr3_6Y=5vNM0=aD+13JM_Q5POts9M7kzuw@mail.gmail.com>
From: Alexey Dobriyan <adobriyan@gmail.com>
Date: Mon, 23 Jan 2017 13:02:54 +0300
Message-ID: <CACVxJT-ko=_vP7gksSKms6pXGhmdNbkWYS=A_Le3eOnC24zSQg@mail.gmail.com>
To: Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset=UTF-8
Cc: Josh Armour <jarmour@google.com>, Greg KH <gregkh@linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] security-related TODO items?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sat, Jan 21, 2017 at 1:38 AM, Kees Cook <keescook@chromium.org> wrote:
> security wish-lists

Unmap module loader after setting kernel.modules_disabled=1.
