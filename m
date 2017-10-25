Return-Path: <adobriyan@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F410C7D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 12:40:32 +0000 (UTC)
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id C42BA527
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 12:40:31 +0000 (UTC)
Received: by mail-qk0-f195.google.com with SMTP id k123so30280301qke.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 25 Oct 2017 05:40:31 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1508924843.4165.6.camel@wdc.com>
References: <1508924843.4165.6.camel@wdc.com>
From: Alexey Dobriyan <adobriyan@gmail.com>
Date: Wed, 25 Oct 2017 14:40:30 +0200
Message-ID: <CACVxJT_oJsfEDkcr2iQKerBTXXVkt-dv-7sLpihLGTTqVhJhMQ@mail.gmail.com>
To: Bart Van Assche <Bart.VanAssche@wdc.com>
Content-Type: text/plain; charset="UTF-8"
Cc: "leonro@mellanox.com" <leonro@mellanox.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] How to encourage driver authors
 to annotate integer endianness properly
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 10/25/17, Bart Van Assche <Bart.VanAssche@wdc.com> wrote:
> I think we need a way to encourage driver authors
> to pay attention to endianness annotations,

typedef struct {
        uint32_t _;
} __le32;

The problems of sparse are:
a) it is not mandatory part of kernel compilation, and
b) it doesn't break compilation.
