Return-Path: <glikely@secretlab.ca>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D13184D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 06:26:49 +0000 (UTC)
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4FE662033D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 06:26:49 +0000 (UTC)
Received: by mail-ig0-f170.google.com with SMTP id h3so10275444igd.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 12 Aug 2014 23:26:48 -0700 (PDT)
MIME-Version: 1.0
Sender: glikely@secretlab.ca
In-Reply-To: <20140812164922.GS17528@sirena.org.uk>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<53EA3DA0.2070407@roeck-us.net>
	<CACxGe6vYNjEAZT6YhB5WNyh40urSEVRbmVaWjEt6nQNUbgMbPw@mail.gmail.com>
	<20140812164922.GS17528@sirena.org.uk>
From: Grant Likely <grant.likely@secretlab.ca>
Date: Wed, 13 Aug 2014 07:26:28 +0100
Message-ID: <CACxGe6vu6P=KsP7O09afqzgdx2Xh11N9t_C0VKJ9T+yY-_3m6A@mail.gmail.com>
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset=ISO-8859-1
Cc: shuah.kh@samsung.com, ksummit-discuss@lists.linuxfoundation.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] kselftest - What's in 3.17 and plans for 3.18
 and beyond
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 12, 2014 at 5:49 PM, Mark Brown <broonie@kernel.org> wrote:
> On Tue, Aug 12, 2014 at 05:23:28PM +0100, Grant Likely wrote:
>> On Tue, Aug 12, 2014 at 5:15 PM, Guenter Roeck <linux@roeck-us.net> wrote:
>
>> > Do you have that public yet ? I might want to use that for my -stable sanity
>> > tests.
>
>> Nothing yet. It's currently hacked into my build environment script.
>> I'm working on getting it into a form usable by others. Ideally I
>> think it should go into the kernel tools/testing directory.
>
> While we're working on things like this it's probably worth getting the
> scripts Kevin, Olof and I use for build and boot test reporting (I only
> run them, I've not contributed anything) or something like them into
> scripts/ - they're pretty good and having a common format makes things
> easier when looking at multiple reports.

Where is the current copy of those scripts?

g.
