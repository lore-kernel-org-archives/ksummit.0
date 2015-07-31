Return-Path: <Tim.Bird@sonymobile.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 82B10415
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:25:53 +0000 (UTC)
Received: from seldrel01.sonyericsson.com (seldrel01.sonyericsson.com
	[37.139.156.2])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BCF3813E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 31 Jul 2015 17:25:52 +0000 (UTC)
Message-ID: <55BBAF9B.7010007@sonymobile.com>
Date: Fri, 31 Jul 2015 10:25:47 -0700
From: Tim Bird <tim.bird@sonymobile.com>
MIME-Version: 1.0
To: Rob Herring <robherring2@gmail.com>, =?UTF-8?B?IkFuZGVyc3NvbiwgQmrDtnI=?=
	=?UTF-8?B?biI=?= <Bjorn.Andersson@sonymobile.com>
References: <20150723105726.GC30929@amd>
	<CACRpkdbCbhgJHZifouDVUvaxyT5YWWdQz7Nt3AKoLvuEn4z7mQ@mail.gmail.com>
	<20150723121441.GB29747@amd>
	<20150723084251.54da2be0@gandalf.local.home>
	<20150723154014.GD11162@sirena.org.uk>
	<55B7FD82.8010806@sonymobile.com>
	<20150728230743.GO4753@usrtlx11787.corpusers.net>
	<CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
In-Reply-To: <CAL_JsqJ0j2wPwVYj3PX0UYiAXeZ-vm8KGX-W_-Dk3Gu1PVQrQw@mail.gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Cc: "riverful.kim@samsung.com" <riverful.kim@samsung.com>,
	"kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
	John Stultz <john.stultz@linaro.org>, Pavel Machek <pavel@ucw.cz>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Mainline kernel on a cellphone
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>



On 07/31/2015 09:18 AM, Rob Herring wrote:
> On Tue, Jul 28, 2015 at 6:07 PM, Bjorn Andersson
> <bjorn.andersson@sonymobile.com> wrote:
>> On Tue 28 Jul 15:09 PDT 2015, Tim Bird wrote:
>>
>>> On 07/23/2015 08:40 AM, Mark Brown wrote:
>>>> On Thu, Jul 23, 2015 at 08:42:51AM -0400, Steven Rostedt wrote:
>>>>
>>>>> Although is this something to be a core topic or a tech topic? Does
>>>>> this affect all subsystems, or just a set of drivers? Note, a core
>>>>> topic wont get as much time for discussion as a tech topic would.
>>>>
>>>> It's basically all subsystems that get impacted, at the minute I'd say
>>>> it's more a plan of action and process discussion than a technical one
>>>> though in the context of KS planning that's quite probably the same
>>>> thing.
>>>>
>>>>> Also, what is expected to be solved at KS?
>>>>
>>>> Tim Bird (Cced) has been running some sessions at other conferences
>>>> scoping the problem and discussing ways to move forward on this, another
>>>> similar session might be useful.
>>>
>> [..]
>>> In particular it has a table showing certain areas that tend to have
>>> a lot of out-of-tree code (e.g. most phones have between 80K to
>>> 100K of lines of wireless driver support out-of-mainline)
> 
> Practically every vendor BSP I've looked at has Broadcom vendor driver
> copied in.
> 
>> In the Xperia Z3 we have a bcm4339 and I managed to get that up and
>> running with the brcmf driver on mainline last week - pending Qualcomm
>> regulator support and 1 pending patch in mmc.
> 
> That's no small feat, but the real problem here are the feature gaps
> with mainline. Things I've heard about are switching between AP and
> client modes, P2P support, Android specific power optimized firmware,
> etc. We do have to start somewhere, but as long as vendors are putting
> new features in their vendor drivers first and not getting pushback
> from customers to have mainline (or mainline + feature X) drivers it
> is going to be a losing battle.

I agree completely.

I'm doing some research now on the usefulness of backporting the current
brcm80211 code to 3.18, which many of the next round of Android phones
will be using.  This at least exposes the stack to mobile device vendors
and device owners, who (with some luck) can test it in production settings
and find deficiencies.

If we do nothing, then we'll have another full generation of phones
which focus exclusively on out-of-tree wireless driver code.  This will
end up delaying the adoption of the mainline driver (in this product
area) by another few years, IMHO.

Feedback on the and sanity of this approach are welcome. :-)  If anyone knows
things about the broadcom driver or the wireless stack that would make this
backport particularly costly, please let me know.
 -- Tim
