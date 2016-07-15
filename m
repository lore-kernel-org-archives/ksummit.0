Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D0238902
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 02:56:57 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4975C1E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 15 Jul 2016 02:56:57 +0000 (UTC)
To: Greg KH <greg@kroah.com>
References: <1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com>
	<5788337F.8000500@roeck-us.net> <20160715014103.GA5791@kroah.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <578850EB.3090109@roeck-us.net>
Date: Thu, 14 Jul 2016 19:56:43 -0700
MIME-Version: 1.0
In-Reply-To: <20160715014103.GA5791@kroah.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 07/14/2016 06:41 PM, Greg KH wrote:
> On Thu, Jul 14, 2016 at 05:51:11PM -0700, Guenter Roeck wrote:
>> On 07/14/2016 05:22 PM, Greg KH wrote:
>>> On Thu, Jul 14, 2016 at 11:06:03AM +0100, Mark Brown wrote:
>>>> On Thu, Jul 14, 2016 at 12:17:53PM +0900, Greg KH wrote:
>>>>> On Wed, Jul 13, 2016 at 03:34:47PM +0100, Mark Brown wrote:
>>>>
>>>>>> There was a lot of pushback against LTSI,
>>>>
>>>>> pushback from whom?
>>>>
>>>> Linaro members who wanted the LSK.
>>>
>>> Ok, there's no need for everyone to use the same messy tree, but perhaps
>>> Linaro could participate with LTSI to help make something that more
>>> people can all use?  No need to keep duplicating the same work...
>>>
>>> But this is way off-topic here, sorry.
>>>
>>
>> Maybe a separate topic, and not entirely feasible for the kernel summit,
>> but it might be worthwhile figuring out why companies are or are not
>> using LTSI. My major problem with it was always that it is just a collection
>> of patches, not a kernel tree, meaning merges or cherry-picks are non-trivial.
>> Sure, one can create a kernel tree from it, but that is not the same.
>
> It's maintained like most other "distro" kernels are, so I find your
> annoyance about a quilt tree of patches odd.  But it is trivial to turn

Not annoyance. It just didn't seem practical. We tried using a patch series
in Yocto at my previous job, and it didn't work out well. We gave it up
pretty quickly and started to maintain the kernel in git instead.

> it into a git tree, the scripts are included in the LTSI repo, which is
> what some companies do with it today, others take the built Yocto
> packages and just use them.  At the LTSI meeting today in Tokyo, a
> number of companies said they are relying on it and using it in shipping
> products, so it seems to be useful to them :)
>

Good to hear that. I do wonder, though, if those companies use the tree
entirely or mostly unmodified, or if they have active kernel development.

> Personally, keeping a kernel tree as external patches is a much more
> sane way to manage a kernel, in that it makes it easy to update the base
> easier, and it gives people a huge hint just how far off of "mainline"
> they really are.  Keeping everything in one branch, in one git tree,
> hides all of that, and seems to cause lots of perception problems at
> times (look at the 2.5 million line addition monstrocity that QCOM
> publishes for older 3.10-based SoCs and people consume unknowingly as
> proof of that...)
>

At my previous job, we maintained ("only") a few hundred patches on top of the
mainline kernel. In that case, we _could_ have used LTSI instead of a stable
kernel as basis. However, we did track the stable kernel, and "git merge" was quite
straightforward and painless to use. Even a rebase to new kernel releases was
easy and typically took just a few hours. This was only possible by using a well
defined git tree as basis. Using LTSI would just have added additional complexity.

A different team at my previous employer used a distro which for all practical
purposes mandated using a series of patches maintained in Yocto to be applied
on top of the vendor kernel. The development model this team used was to check
out the kernel in Yocto (with existing patches applied), to make local changes,
and to apply those changes as additional patch or patches to the Yocto tree.
To me that seems to be a pretty complicated development model. It makes it hard
to just look at the kernel source, and it makes active development quite
difficult - even more so if a patch has to be applied to multiple branches.

Overall, I can not imagine that it is even possible to use quilt trees as basis
for development in a company with if active kernel development, even more so
if a large number of engineers and/or a number of branches are involved.
Sure, the QCOM example may be extreme, but do you really think that writing
those 2.5M LOC would have been possible if QCOM had used Quilt trees instead
of git ? Using Quilt would for sure have prevented them from writing those
2.5M LOC, but then there would be nothing. That doesn't sound like a feasible
alternative either.

Not that I like that chromeos-4.4 already has some 4,400+ patches on top of 4.4.14;
I would rather see those in the upstream kernel (to be fair, more than half of
those patches are backports). Maintaining such a kernel in a quilt tree ? Not really.

Of course, if the goal is to provide a set of patches to companies who don't
actively modify the kernel, using quilt trees might be an acceptable or even
a better option. However, again, I don't think it is a feasible alternative
to git if active development is involved.

Thanks,
Guenter
