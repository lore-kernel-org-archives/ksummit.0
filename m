Return-Path: <olof@lixom.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A11228A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 16:40:36 +0000 (UTC)
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0650320339
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 16:40:35 +0000 (UTC)
Received: by mail-vc0-f173.google.com with SMTP id hy10so1465vcb.4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 13 Aug 2014 09:40:35 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGa+x870XoA8Yi6BCOq7EsOQRjmKUpM3AAwhP_Y30eEbrkcHPg@mail.gmail.com>
References: <53E38ED5.9000300@samsung.com> <53E43365.50809@hitachi.com>
	<53E8CF03.6020308@samsung.com> <53E8EB93.8030301@hitachi.com>
	<20140812130043.4894DC40C5C@trevor.secretlab.ca>
	<53EA3DA0.2070407@roeck-us.net>
	<CACxGe6vYNjEAZT6YhB5WNyh40urSEVRbmVaWjEt6nQNUbgMbPw@mail.gmail.com>
	<20140812164922.GS17528@sirena.org.uk>
	<CACxGe6vu6P=KsP7O09afqzgdx2Xh11N9t_C0VKJ9T+yY-_3m6A@mail.gmail.com>
	<20140813104053.GK17528@sirena.org.uk>
	<CAGa+x870XoA8Yi6BCOq7EsOQRjmKUpM3AAwhP_Y30eEbrkcHPg@mail.gmail.com>
Date: Wed, 13 Aug 2014 09:40:34 -0700
Message-ID: <CAOesGMjEMG9+uxeg_zPhhZFPi9ZdvdxapjypGLrCVtxGZh0Ejw@mail.gmail.com>
From: Olof Johansson <olof@lixom.net>
To: Kevin Hilman <khilman@linaro.org>
Content-Type: text/plain; charset=UTF-8
Cc: Shuah Khan <shuah.kh@samsung.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On Wed, Aug 13, 2014 at 8:00 AM, Kevin Hilman <khilman@linaro.org> wrote:
> On Wed, Aug 13, 2014 at 3:40 AM, Mark Brown <broonie@kernel.org> wrote:
>> On Wed, Aug 13, 2014 at 07:26:28AM +0100, Grant Likely wrote:
>>> On Tue, Aug 12, 2014 at 5:49 PM, Mark Brown <broonie@kernel.org> wrote:
>>
>>> > While we're working on things like this it's probably worth getting the
>>> > scripts Kevin, Olof and I use for build and boot test reporting (I only
>>> > run them, I've not contributed anything) or something like them into
>>> > scripts/ - they're pretty good and having a common format makes things
>>> > easier when looking at multiple reports.
>>
>>> Where is the current copy of those scripts?
>>
>> Kevin's copy is here:
>>
>>    git://git.linaro.org/people/khilman/build-scripts.git
>
> FWIW, that repo is just a hodge-podge collection of various build/boot
> scripts I'm using.  I just cleaned it up a little and removed a bunch
> of them that I no longer use.
>
> They get the job done for me, but are certainly not pretty.
>
> Also for boot testing, the main tool I'm  using is pyboot, which is
> essentially a tool to automate u-boot/fastboot over the serial
> console.  It relies heavily on conmux to abstract the console and
> power cycling.
>
>     https://git.linaro.org/people/kevin.hilman/pyboot.git
>
> In any case, the combination of those build-scripts and pyboot are
> what I'm using to generated the automated build/boot reports I'm
> sending to the kernel-build-reports list (e.g.
> http://lists.linaro.org/pipermail/kernel-build-reports/2014-August/004862.html)

Yeah, I'm in the same boat (but I don't have a public git repo with my
scripts). They're all just big hacks to get things going, and I'm not
so sure it makes sense to collaborate on them too much. pyboot has
been useful to share between us, but even there it's been more work to
share a code base than having separate copies and borrowing ideas.

If things get turned too generic then they just become more cumbersome
to modify and improve (or even use).


-Olof
