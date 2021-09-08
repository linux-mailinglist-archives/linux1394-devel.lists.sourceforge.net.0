Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3C04032AC
	for <lists+linux1394-devel@lfdr.de>; Wed,  8 Sep 2021 04:36:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mNnRa-0003RH-P0; Wed, 08 Sep 2021 02:36:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1mNnRZ-0003R3-HA
 for linux1394-devel@lists.sourceforge.net; Wed, 08 Sep 2021 02:36:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XpBX03ofTywQgFacgXDG1pZnMP+5dK41kLgfbvxz1O8=; b=V/wdtzreDxK/Sjm81DVMb2hlKN
 FFEbOeatnyGSqkeo7Ex9UHjNLw0cDLhdphL13o7qhez/wvqNIZPHfZ3bgTDqWJ/CHwG65oBy6q6Pk
 yzievZVeDKgESw+xj9nCPelYRAv5DWpXqjm+A4jKQCDneZPxdsSgyChUHRuZVjsg9cng=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XpBX03ofTywQgFacgXDG1pZnMP+5dK41kLgfbvxz1O8=; b=XFdLqQs13dw1tL8xjMa7qq0efT
 KrN2TgTUJbFdyoLKF+JWbw2Pmyil+oAtOQkihRXurTvrNBfv9mE7gTOJE6s85JZeIUyie5FLfgvlk
 f7kAmtzqIoS0/FF22WbaxM6dTI8bvvFKyXDol9A0PCj29Vx5P8SwdcBydcxDZRaKfFuE=;
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mNnRQ-001mWp-1r
 for linux1394-devel@lists.sourceforge.net; Wed, 08 Sep 2021 02:36:09 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 8C8983200985;
 Tue,  7 Sep 2021 22:17:23 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 07 Sep 2021 22:17:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=XpBX03ofTywQgFacgXDG1pZnMP+
 5dK41kLgfbvxz1O8=; b=vefuPfVGtc/b90iJSbhosL2zzG/5ncgLrxYd1mMbkST
 5wMhlFPbptLMut4VDPB3L4vcAgBFMPslBfzzaNdSdQZPguX12B7NWauXwa0X6BNp
 QJa+hoiBdHFJNRvNGUl2EZMYo4ZZIizTSWsYWbd3O+jsAgdKt+r8uLm+ViJbc9cT
 SfoZ27dk+fvb+EOtKaxoE1esjj9N9BqOWZW9annXz2RDW8T5t+clxZsbu59VWisM
 Pze3rVKT/d/iQXPSCTW7f4se1u/rhM1fDWvLnJ58mQStRG0e31w1JzNGmMiw4lPi
 l3oNkgLh5B1BPadqlsyxSaB2091SITD82aU/7rfFZzA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=XpBX03
 ofTywQgFacgXDG1pZnMP+5dK41kLgfbvxz1O8=; b=NCbZLVBdq20uU76hRrohup
 mkJaVbehVe5tcTQNzK4eDvIVBbpQ0STcG9x7K/BQF6Mm05dl5TlPoujHIypS/9lC
 eDi0wLnODl9P9yjdtxZ1VX1hZv5L8pFcQAuxQbl2kKDxR1ElHjk5UxSwF+k1FlOC
 mNkT8z7ts3CdSgldEH6jhRSufAZ+9gXifMj146t1LRTO0gsNrjQDKL743wuRTSCR
 vO0oKfr9OGaxbob4msuji3/tFyGtas64CDYgiZUru/+lgK7QWOt+BDSuBRMRqEvt
 1YNfxsEHUdT2ijtfiyggcjprR/B7bsn8NFshVo4qpVuMq0tlefjJE3zWzRqc1phQ
 ==
X-ME-Sender: <xms:Mh04YUl5tJ-FAyiAyZEWhiW8KjBW1yQN29w7K84SoNJx8cQMEBN6QA>
 <xme:Mh04YT1WEYreZKYIN8kFQXX4xODjFLMHkmFLHyZXFli7fwsdAbA7zfu_jeA-Oo8w8
 a8sraE7J82SyHvRL5I>
X-ME-Received: <xmr:Mh04YSreeLqYBlV2v24tgFB61X_2fZyryy0Rx-f5iIRLgI6VJQKAvTqTJYmmR2uW3LYIzFKt4Y8KNEf43tsTaTPIDI-s6FTB8A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudefiedgheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeeugefhhfeileevtdegleduleeffedvkefhueekveei
 hfeijeejvdekuddthfekhfenucffohhmrghinhepphhkghgsuhhilhgurdgtohhmnecuve
 hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgr
 shhhihesshgrkhgrmhhotggthhhirdhjph
X-ME-Proxy: <xmx:Mh04YQnAq3w9MqNRMOWH-sqEMvt4Sb68GLs00tJutW9xKeBV7_5ILA>
 <xmx:Mh04YS2eOHYme2SRRMLH0iZEVTxpBC51R6Bd4fwiZDZ2hN3G52B0wg>
 <xmx:Mh04YXtjmozt1vR9cdQA3YxwEjX2v8u0NtoXLPBl63N284MFJDwYbQ>
 <xmx:Mx04YVQV14bk-TSR0lDpnr3f6JjBsxsBq079qZ4TTNAVg2REUP93Uw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 7 Sep 2021 22:17:20 -0400 (EDT)
Date: Wed, 8 Sep 2021 11:17:18 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: David Runge <dave@sleepmap.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YTgdLkTs7wEmj8fh@workstation>
Mail-Followup-To: David Runge <dave@sleepmap.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kristian Hoegsberg <krh@bitplanet.net>,
 linux1394-devel@lists.sourceforge.net,
 linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
References: <20210205112638.xuduvuefy3auycht@linutronix.de>
 <YB3TLNN39/XhUyUY@hmbx> <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
 <20210308141210.yoa37dsc26p4jsim@linutronix.de>
 <YEkMvjJt/Vu9Jbgu@hmbx> <YTfy7pLhWkTOn+aI@hmbx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YTfy7pLhWkTOn+aI@hmbx>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, On Wed, Sep 08, 2021 at 01:17:02AM +0200, David Runge
 wrote: > Upon first boot the /dev/fw0 and /dev/fw1 nodes did not show up >
 initially [1] (log without using -1 debug parameter), which is why I > [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.21 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mNnRQ-001mWp-1r
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: Kristian Hoegsberg <krh@bitplanet.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux1394-devel@lists.sourceforge.net, linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

Hi,

On Wed, Sep 08, 2021 at 01:17:02AM +0200, David Runge wrote:
> Upon first boot the /dev/fw0 and /dev/fw1 nodes did not show up
> initially [1] (log without using -1 debug parameter), which is why I
> switched the device off and on again.
> Afterwards the device nodes were created, so I attempted to use aplay -l
> to check whether the device was detected. The command hung forever (also
> starting jackd) and I had to reboot eventually. Using alsamixer I was
> able to select the Fireface800 device from the list of devices though.
> 
> Upon 2nd boot I used the -1 debug parameter for firewire-ohci [2].
> The device nodes were created automatically, but neither aplay -l nor
> alsamixer showed the audio interface. The attempt to switch the device
> off and on again and afterwards to remove the firewire-ohci module lead
> to another freeze and a successive reboot.
> 
> If I can provide further information, please let me know!
> 
> I hope I can try the vanilla 5.14.1 kernel tomorrow to see how it
> behaves in regards to firewire-ohci (judging from the past it will
> probably work though).
> 
> Best,
> David
> 
> P.S.: I have added Kristian Hoegsberg in CC, who is mentioned as the
> author of firewire-ohci and firewire-core.
> 
> [1] https://pkgbuild.com/~dvzrv/bugs/2021/09/linux-5.14.1.19.realtime1-kernel.log
> [2] https://pkgbuild.com/~dvzrv/bugs/2021/09/linux-5.14.1.19.realtime1-restart_device_kernel.log

```
kernel: INFO: task pipewire-media-:2554 blocked for more than 122 seconds.
kernel:       Not tainted 5.14.1.19.realtime1-1-rt #1
kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
kernel: task:pipewire-media- state:D stack:    0 pid: 2554 ppid:  1803 flags:0x00000220
kernel: Call Trace:
kernel:  __schedule+0x338/0x1580
kernel:  ? __mod_zone_page_state+0x81/0xf0
kernel:  ? rt_spin_unlock+0x13/0x40
kernel:  ? rmqueue_bulk+0x201/0x820
kernel:  schedule+0x43/0xf0
kernel:  schedule_timeout+0x14d/0x190
kernel:  wait_for_completion+0x9e/0x100
kernel:  fw_run_transaction+0xd7/0x110 [firewire_core bb04f32445782056ab0dc73199b57a87dc27c06d]
...
```

According to the log, the task of 'pipewire-media-:2554' is blocked during
122 seconds by call of 'wait_for_completion()' in code of
'fw_run_transaction()'. This is odd in two points of transaction service
programmed in Linux FireWire subsystem:

1. The process context should be awakened by softIRQ context, which should
   be scheduled by hwIRQ context for hardware interrupt of OHCI 1394
   controller.
2. Even if the softIRQ context is not invoked, the process context
   should be awakened by wheel timer context, which is scheduled to finish
   the transaction several jiffies later (originally prepared for the case
   of split-transaction). In the case, the result of transaction is
   'RCODE_CANCELLED'.

The call graph is below:

1 in the process context:

```
(drivers/firewire/core-transaction.c)
->fw_run_transaction()
  ->timer_setup_on_stack()
  ->fw_send_request()
    ->timer_setup()
    ->struct fw_card_driver.send_request()
    (drivers/firewire/ohci.c)
    = ohci_send_request()
      ...
      ->writel()
  ->wait_for_completion()
    (blocked and awakened by softIRQ context later)
  ->destroy_timer_on_stack()
```

2 in the hwIRQ context:

```
(drivers/firewire/ohci.c)
->irq_handler()
  ->tasklet_schedule(&ohci->at_response_ctx.tasklet);
```

3 in the softIRQ context:

```
(drivers/firewire/core-transaction.c)
->handle_at_packet()
  ->struct fw_packet.callback()
  = transmit_complete_callback()
    ->close_transaction()
      ->struct fw_transaction.callback()
      = transaction_callback()
        ->complete()
```

4. in the timer wheel context:

```
(drivers/firewire/core-transaction.c)
->split_transaction_timeout_callback()
  ->struct fw_packet.callback()
  = transaction_callback()
    ->complete()
```

I guess we have issue in the softIRQ context or timer wheel context
instead of hwIRQ context, if the OHCI 1394 controller you use has
no quirk (I suggest you to give information about the controller).

I'd like you to check it. The firewire-ohci module has 'debug' parameter.

``
$ modinfo firewire-ohci
...
parm:           debug:Verbose logging (default = 0, AT/AR events = 1, self-IDs = 2, IRQs = 4, busReset events = 8, or a combination, or all = -1) (int)
``

When the parameter has value '5' (= 1 | 4), we can see information per
transaction, like:

```
kernel: firewire_ohci 0000:0b:00.0: IRQ 00000001 AT_req
kernel: firewire_ohci 0000:0b:00.0: AT spd 2 tl 27, ffc1 -> ffc0, ack_pending , QR req, fffff0000400
kernel: firewire_ohci 0000:0b:00.0: IRQ 00000020 AR_resp
kernel: firewire_ohci 0000:0b:00.0: AR spd 2 tl 27, ffc0 -> ffc1, ack_complete, QR resp = 04101573
```

The first line:  in hwIRQ context for request subaction
The second line: in softIRQ context scheduled by the above.
The third line:  in hwIRQ context for response subaction
The fourth line: in softIRQ context scheduled by the above.

If we have any issue in invocation of softIRQ, we would often see
missing swIRQ logs (and it might be the most concern to RT Linux
developers).

If you need instruction to configure module parameters, 'man modprobe.d'
may be a good help.


Thanks

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
