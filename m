Return-Path: <SRS0=aia5=6D=goodmis.org=rostedt@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AB394A88
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 17:11:13 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 400FF1B4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Jun 2017 17:11:13 +0000 (UTC)
Date: Fri, 30 Jun 2017 13:11:10 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170630131110.181c3b7a@gandalf.local.home>
In-Reply-To: <CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<CA+55aFxBUe4QAa11i-ySr2i959EpvcEZYf=9NumWyTDH+6BEQw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

On Tue, 27 Jun 2017 10:18:04 -0700
Linus Torvalds <torvalds@linux-foundation.org> wrote:

> We could *maybe* make it part of some "make simpleconfig" that just
> basically uses "select" a lot with s special architecture-specific
> Kconfig file, and try to help people with a few bigger questions.

Actually, I think something can be done quite easily today without much
modifications.

What about a: make profileconfig

And add at the top of make menuconfig menu: Profiles

Which the "make profileconfig" will only look at that.

The Porfile section will only contain profiles. Which would be human
readable options (what the hell is "Big Bang thermal governor" anyway?).

That is:

 Profiles:

    Virtualization:

           KVM <menu>
              Intel
              AMD
              Both

           Paravirt


    Networking:

           Firewall
           [...]

    Power Management:

           [...]

    File systems:

          Ext

          [...]


Etc, etc

None of these options should become a CONFIG_*. That is, no code in the
kernel should have CONFIG_VIRTUALIZATION, as these profiles wont create
a CONFIG_ define. But instead, each of these will select all the
necessary options to support what it wants.

I will say, it may enable more than you ask for. But at least I believe
something like this would be a start. Then you only need to select a
few options and it will enable everything you need to have it work.

The profiles should only be what a normal person would ask for in a
kernel. Yes, I want USB storage, Yes I want PCI support, Yes I want a
firewall. No I don't want SElinux (sorry). No I don't want encrypted
filesystems (ok this is for a test box, I don't care about security or
privacy).

etc etc 

-- Steve
