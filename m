Return-Path: <masami.hiramatsu.pt@hitachi.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 556D34C6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:13:13 +0000 (UTC)
Received: from mail7.hitachi.co.jp (mail7.hitachi.co.jp [133.145.228.42])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 91AF51FD46
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 10:13:12 +0000 (UTC)
Received: from mlsv4.hitachi.co.jp (unknown [133.144.234.166])
	by mail7.hitachi.co.jp (Postfix) with ESMTP id 9FB3637AC4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 19:13:11 +0900 (JST)
Received: from vshuts01.hitachi.co.jp (vshuts01.hitachi.co.jp [10.201.6.83])
	by mfilter03.hitachi.co.jp (Switch-3.3.4/Switch-3.3.4) with ESMTP id
	s4CADAn9003390 for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 12 May 2014 19:13:11 +0900
Message-ID: <53709EB2.20400@hitachi.com>
Date: Mon, 12 May 2014 19:13:06 +0900
From: Masami Hiramatsu <masami.hiramatsu.pt@hitachi.com>
MIME-Version: 1.0
To: ksummit-discuss@lists.linuxfoundation.org
References: <20140511041449.GP12708@titan.lakedaemon.net>
	<CABe+QzBVC=dRZO4+v93A_Cy2nFuf_ajcq8KO20f5PPzVUf2bkg@mail.gmail.com>
	<20140511162918.GA2527@linux.com>
In-Reply-To: <20140511162918.GA2527@linux.com>
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] QR encoded oops for the kernel
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

(2014/05/12 1:29), Levente Kurusa wrote:
> Hi,
> 
> On Sun, May 11, 2014 at 08:57:01AM -0700, Sarah A Sharp wrote:
>> On Sat, May 10, 2014 at 9:14 PM, Jason Cooper <jason@lakedaemon.net> wrote:
>>> All,
>>>
>>> I recently came across a patch series attempting to implement encoding
>>> kernel oops into a QR code [1].  The QR code is then dumped to the
>>> framebuffer.  The QR code is a URL of the form:
>>>
>>>   https://oops.kernel.org/?qr=<base64 compressed oops>
>>>
>>> This proposal is interesting because it fundamentally changes the way
>>> users report bugs to the kernel community.  First and foremost, it makes
>>> it much easier.
>>>
>>>   1) oops occurs
>>>   2) user pulls out phone, scans QR code
>>>       - at this point, the oops is recorded on the server.  Nothing more
>>>         is required of the user.
>>>
> 
> To be precise, most scanners don't automatically open the links
> found in QR codes and hence a tap/click from the user is required. :-)

I guess we might need a smartphone application for sending oops
to correct server. So, I'd like to suggest following; at step 0,
user downloads oops-report application and he/she might sign-up the
server with his mail via the application(optional). And at step2,
run the app to scan the QR code. The app decodes it and reports to
server via user's account (anonymous is ok). :)
Thus, they don't need to fill the additional forms.

Thank you,

-- 
Masami HIRAMATSU
Software Platform Research Dept. Linux Technology Research Center
Hitachi, Ltd., Yokohama Research Laboratory
E-mail: masami.hiramatsu.pt@hitachi.com
