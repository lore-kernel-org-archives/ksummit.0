Return-Path: <vinod.koul@intel.com>
Date: Wed, 23 Sep 2015 15:21:07 +0530
From: Vinod Koul <vinod.koul@intel.com>
To: Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Message-ID: <20150923095107.GW2381@localhost>
References: <20150806062029.55f0c2f2@recife.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150806062029.55f0c2f2@recife.lan>
Cc: Ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Media Controller
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Aug 06, 2015 at 06:20:29AM -0300, Mauro Carvalho Chehab wrote:

> Due to that, we're redesigning the MC core, making it more generic and
> more capable of representing complex devices. So, we'd like to discuss
> it with the KS audience, in order to check if there are other use cases
> for it, and if the solution we're designing would require more changes
> to fit such other use cases.
> 
> For this discussion, I nominate myself and Laurent Pinchart, Hans Verkuil,
> Sakari Ailus, Shuah Khan and Lars-Peter Clausen.
> 
> PS.: I know we're a week late, but we've been busy this month with the
> discussions, including a Media Controller 3-days summit in Helsinki last
> week.

Sorry for replying super duper late, I wanted to ensure that I have travel
go ahead before asking :)

So I would like an invitation for this WS, at Intel we have similar issues
with DSP graphs. We are using shiny new ASoC topology framework in our DSP
to get topology information and not hard code the graphs, but have no way to
tell that to usermode.

I did look at media controller in past and would love to discuss more. In
audio, people have been talking about this and I would be spending time on
this later this year

-- 
~Vinod
