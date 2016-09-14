Return-Path: <linux@roeck-us.net>
To: Greg KH <gregkh@linuxfoundation.org>, Mark Brown <broonie@kernel.org>
References: <20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<20160910120055.gr2cvad7efwci4f2@thunk.org>
	<20160912162714.GC27946@sirena.org.uk>
	<20160912171450.GB27349@kroah.com>
	<20160912234548.GL27946@sirena.org.uk>
	<20160913061931.GC11047@kroah.com>
	<20160913103814.GQ27946@sirena.org.uk>
	<CAMuHMdU=i3b_QWNg1biKKYUTh-cV_BLuJrroAU_E6nBt3x=NFg@mail.gmail.com>
	<20160913192153.GT27946@sirena.org.uk>
	<20160914014906.GA23547@kroah.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <24927a03-3b6f-c09a-ce0c-4071aace03cb@roeck-us.net>
Date: Tue, 13 Sep 2016 20:00:35 -0700
MIME-Version: 1.0
In-Reply-To: <20160914014906.GA23547@kroah.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
 backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/13/2016 06:49 PM, Greg KH wrote:
> On Tue, Sep 13, 2016 at 08:21:53PM +0100, Mark Brown wrote:
>> On Tue, Sep 13, 2016 at 02:25:10PM +0200, Geert Uytterhoeven wrote:
>>> On Tue, Sep 13, 2016 at 12:38 PM, Mark Brown <broonie@kernel.org> wrote:
>>>> On Tue, Sep 13, 2016 at 08:19:31AM +0200, Greg KH wrote:
>>
>>>>> 4.4 was a total supprise to everyone, including me, it came out during
>>>>> the kernel summit discussions, and we decided right there in the middle
>>>>> of my talk to do it.  So there was no "preannouncement" possible there.
>>
>>>> It was still a preannouncement - you announced before v4.4 came out as
>>>> opposed to after.
>>
>>> Yes, but still long after the closing of the v4.4 merge window, making it
>>> almost impossible to sneak in new features.
>>
>> That's true but it's not something that makes a different from the point
>> of view of the people I've seen caring most about getting advance notice
>> - for them just having some notice before the actual release makes a big
>> difference.
>
> Why?  What do they want to do with this notice?
>

Planning. Those two months (or more) do make a substantial difference for
companies with a policy to use the next LTS once it is available. From
engineering side, the first rebase attempts can start early, meaning
engineering can get an early idea how difficult the ultimate task is going
to be, and can prepare management accordingly. Also there is more time
to prepare sales and marketing (and hesitant engineering managers ;-)
for the new release.

Guenter
