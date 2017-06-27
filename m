Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CFE22BC6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 21:16:48 +0000 (UTC)
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3F962237
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 21:16:48 +0000 (UTC)
Received: by mail-ua0-f194.google.com with SMTP id j53so3151408uaa.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Jun 2017 14:16:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
	<20170627184448.GU21846@wotan.suse.de>
	<CA+55aFyvssxg63UoQ-rOaf1TMacJ6T5jyLkWECosQJ_N=9gaaQ@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
Date: Tue, 27 Jun 2017 14:16:46 -0700
Message-ID: <CAOesGMimO1rYi7RpcsZYX9uDgWUJdv4XSgQR+RJaaS2qt_FCLw@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Christoph Hellwig <hch@infradead.org>,
	Cristina Moraru <cristina.moraru09@gmail.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jun 27, 2017 at 12:27 PM, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
> On Tue, Jun 27, 2017 at 11:44 AM, Luis R. Rodriguez <mcgrof@kernel.org> wrote:
>>
>> Such things exist now:
>>
>> make kvmconfig
>> make xenconfig
>
> Not really. Not for normal users. Those are literally only for the
> special cases that are *not* normal.
>
>> So you mean a menu of the defconfigs ?
>
> No. The defconfigs are useless. They are fundamentally broken, excatly
> because there is never one config that can work.
>
> They do need to be of the "kvmconfig" type, but for sane subconfirurations.
>
> So I'd look for something like
>
>     make modernpcconfig # enable minimal modern PC workstation stuff
>     make f25config  # enable minimal stuff required for F25
>     make amdconfig # enable the core modern AMD stuff
>
> or something like that.

It sounds to me like you want to turn it from option/driver selection
to feature selection, where features could be stuff like:
 * Basic config for modern PC
  - Intel-based
  - AMD-based
 * DBasic configs for distros
  - F25
  - Debian Jessie
  - ...
 * Virtualization
  - Platform support
    + Intel (default platform support && basic-config-for-intel)
    + AMD
  - Paravirt support
    + Drivers for paravirt platform [...]


Is that a correct interpretation of what you have in mind?


So, a meta config layer if seen in the context of our current config system.

If we were to do this incrementally with current Kconfig on the
backend, I think most of the above could be done as one config action,
that in turn would select a set of kconfig snippets on the backend,
concatenate them all and give you the config to build with.



-Olof
