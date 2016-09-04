Return-Path: <luto@amacapital.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BECFA722
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Sep 2016 19:03:40 +0000 (UTC)
Received: from mail-vk0-f46.google.com (mail-vk0-f46.google.com
	[209.85.213.46])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 310C8176
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  4 Sep 2016 19:03:40 +0000 (UTC)
Received: by mail-vk0-f46.google.com with SMTP id f76so62826890vke.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 04 Sep 2016 12:03:40 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160903052014.GA4850@outlook.office365.com>
References: <20160903052014.GA4850@outlook.office365.com>
From: Andy Lutomirski <luto@amacapital.net>
Date: Sun, 4 Sep 2016 12:03:18 -0700
Message-ID: <CALCETrV+=uJ1bqfHN+LkFZXho-8GjbEd6joBELCwvnk=rg0Skw@mail.gmail.com>
To: Andrei Vagin <avagin@virtuozzo.com>
Content-Type: text/plain; charset=UTF-8
Cc: Kirill Kolyshkin <kir@openvz.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	David Ahern <dsahern@gmail.com>, Patrick McHardy <kaber@trash.net>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Netlink engine issues,
	and ways to fix those
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 2, 2016 at 10:20 PM, Andrei Vagin <avagin@virtuozzo.com> wrote:
> The netlink interface proved itself as a great way to perform
> descriptor-based kernel/userspace communication. It is especially useful
> for cases involving a big amount of data to transfer. The netlink
> communication protocol is simple and elegant; it also allows to extend
> the message format without breaking backward compatibility.

I'm interested, surprise surprise :)
