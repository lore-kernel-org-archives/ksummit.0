Return-Path: <frowand.list@gmail.com>
To: Mark Brown <broonie@kernel.org>, Jiri Kosina <jikos@kernel.org>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon>
	<20160906133429.5ktkvafprbtxr5sd@localhost>
	<20160906162502.GA15434@roeck-us.net>
	<20160907083312.GO28922@quack2.suse.cz>
	<alpine.LNX.2.00.1609071038080.22028@cbobk.fhfr.pm>
	<20160907184403.GA3950@sirena.org.uk>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <57D19A8E.70206@gmail.com>
Date: Thu, 8 Sep 2016 10:06:22 -0700
MIME-Version: 1.0
In-Reply-To: <20160907184403.GA3950@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	ksummit-discuss@lists.linuxfoundation.org,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/07/16 11:44, Mark Brown wrote:
> On Wed, Sep 07, 2016 at 10:41:08AM +0200, Jiri Kosina wrote:
> 
>> consumer space in this area. Consumer space folks seem to be in a 
>> situation that server space people have been in 2.0 / 2.2 era, where we 
>> had exactly the same problem with server hardware (i.e lack of timely 
>> focus on upstream in the process).
> 
> As people keep saying that's not really entirely it - the timescales on
> consumer hardware are *much* tighter than those on server hardware which
> does make a big difference to what you can do here. 

You might be surprised about server hardware. I had a project where I
had to add kernel support (in a proprietary unix) to a release that
shipped before there was any hardware to test on.
 

>> Also, it feels like consumer HW is more in a "fire and forget" mode of 
>> operation, while server hardware usually sticks around for a rather long 
>> time.
> 
> This is part of it.  There *is* a long tail lifespan for a lot of
> consumer hardware but it is in the lower tier vendors and products who
> are for the most part reusing earlier work and we do see a lot of IP
> reuse though.
