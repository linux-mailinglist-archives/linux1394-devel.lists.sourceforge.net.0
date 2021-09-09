Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABA240425D
	for <lists+linux1394-devel@lfdr.de>; Thu,  9 Sep 2021 02:46:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1mO8Cw-0000dS-20; Thu, 09 Sep 2021 00:46:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1mO8Ct-0000dE-W1
 for linux1394-devel@lists.sourceforge.net; Thu, 09 Sep 2021 00:46:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r9KKyrg35zjwF5gzemAFneUD2tTgxa8lll8DSYozUoM=; b=J6vYXDIJo8V/SwyvntIqWVM988
 w9XABf5su7T3VVzIWAOeHJdJvwm2P5vGfEeGASamqeVct2O/Atvky+PPsto4r2j+pwELKIAtDzwTZ
 zJpyDF/OM8iCHRaiSA0diDeaw3NYliPtyooQowwFknLU+DZU6qB4Z2hJcZDphD7UeBP0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=r9KKyrg35zjwF5gzemAFneUD2tTgxa8lll8DSYozUoM=; b=eqNAve9d1hvg/SrhHNbaMQIb7k
 JPit2nGff3YZrzV/DPxKWuDbFX/vMB4mB1MS8gfydFNtdjft9MTDlSdLerAimLHBehtYMI12kFB4V
 62zt2Q/6oPWD45RznWR60XCnLtOSbLjAyi7KkQwPC+V+VHdzcB+EzmTWIQQNkpdk9kYI=;
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mO8Cr-0044HV-O1
 for linux1394-devel@lists.sourceforge.net; Thu, 09 Sep 2021 00:46:23 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id A3BAB3200933;
 Wed,  8 Sep 2021 20:46:11 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Wed, 08 Sep 2021 20:46:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=r9KKyrg35zjwF5gzemAFneUD2tT
 gxa8lll8DSYozUoM=; b=wrFybNCFu1mw9VhzSkEjX0OC+9rYH40ihV7LKw/RLQD
 mqefXgAO68JjX+09jOPKWUu3pfSqOiO2e98LeGEipuM+JKXgod498vIVwyR8hKiS
 C2ruu8974nslWzmEqxw9BbvSFc1ePBGltgwqtTbLdQ+rBNSJPPjTz39lGd8J/bb5
 NeWj01bPd0il8shPxApKRnpeCr7Hgix6oR6YLTYH+pjooNOWsYGDlw73eK6muupk
 aUkrIuxtRv1Ya743ytihT21CWNR8UDjGHTdYUvbOCLnTV/FJqUW7wyM5WGk4sMlW
 3Z3z8JTAXLl4ckQ+lBFlkkuk7P8+59ef5o73MUJyzYg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=r9KKyr
 g35zjwF5gzemAFneUD2tTgxa8lll8DSYozUoM=; b=Kio+5OedCLZQce3sTpKrrX
 e7J7Ay/oCfGJKrWFJB9+5PbGfBodwH8lrLNePk/LGsU0ESJrQ5oX8Ks+zS5DmpnB
 tAucCFotf0QbU0ShrGw6N5+dN6oudRtQQ1Ex9QPEJAYOjSCplKgccNVoeKcS/hKN
 YhoW3nWyBFovXe4zAZM4155h4914ENQqCPU/iEVOsjnAB8Q5G6DiLarqMOZCYwlD
 SFAjfltOX9Y9vccLcDUXRY+VYty2bllTjtmWAlQyu/SMcrQAv5DdhyXuaTK5grAO
 tbZt49H/f3YU5Et5lQbaRSUuasW4aU5LJw4HO71sebTiaUe/UIPUG4hu0MXb8pxQ
 ==
X-ME-Sender: <xms:Ulk5YdjvHrmILuBWSIXlnu3wgGj69upAkEsu-yMIV0T7u0-qaeB8HQ>
 <xme:Ulk5YSBLvlAATd20ULpAdHjRsenuY4Zj4LW7gSzAKZyhIdVFpfFmq34V39jcFQkvg
 CQR1Wc21peji36i8X4>
X-ME-Received: <xmr:Ulk5YdEUZVFwGnb5GgM6zAXbjWLzv9uJ0hVtaHB_GHmAuRWDoiIhZsXW8Mszd567FesYwcxCoDYEtGM0FglqO3F4IBEeU5kV4g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrudefkedgfeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefvrghkrghs
 hhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjh
 hpqeenucggtffrrghtthgvrhhnpeelhfeugedvjefgjefgudekfedutedvtddutdeuieev
 tddtgeetjeekvdefgeefhfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
 grihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:Ulk5YSQPTSxl8pzGwLWrZzoEqq_10MHaxlKGS12yZIrdpmvx0sJnUw>
 <xmx:Ulk5YayO3YGqTXQYe8sWtLE8LgXrC-krpmr6kzhANeL8el-JBF2pFg>
 <xmx:Ulk5YY7j-ojvu88PaY_y3IttaCZcVy2ctmDqSgpWu3ap1Q43BoB9Zw>
 <xmx:U1k5YUs7_dLcuLqTwgKjNyq6tYErZ5K-9FI6_fVBl8GhEaW7jjgyqg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 8 Sep 2021 20:46:08 -0400 (EDT)
Date: Thu, 9 Sep 2021 09:46:06 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: David Runge <dave@sleepmap.de>
Subject: Re: firewire-ohci fails to initialize Texas Instruments
 XIO2213A/B/XIO2221 based controller on realtime kernels [5.4.91-rt50,
 5.10.8-rt24]
Message-ID: <YTlZTvb6B3O2as+q@workstation>
Mail-Followup-To: David Runge <dave@sleepmap.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Kristian Hoegsberg <krh@bitplanet.net>,
 linux1394-devel@lists.sourceforge.net,
 linux-rt-users@vger.kernel.org,
 "Ahmed S. Darwish" <a.darwish@linutronix.de>
References: <YB+5tdIpbTfnDnIi@hmbx>
 <20210208091940.csuyf7l73n4ofpmz@linutronix.de>
 <YCl28sXo7LEyCK8y@hmbx>
 <20210218083849.iitcrhdgv2oajfhv@linutronix.de>
 <20210218092751.ahn262llcpp2loz7@linutronix.de>
 <20210308141210.yoa37dsc26p4jsim@linutronix.de>
 <YEkMvjJt/Vu9Jbgu@hmbx> <YTfy7pLhWkTOn+aI@hmbx>
 <YTgdLkTs7wEmj8fh@workstation> <YTjzKftQmFtPLYUR@hmbx>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YTjzKftQmFtPLYUR@hmbx>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 08, 2021 at 07:30:14PM +0200, David Runge wrote:
 > I am using '-1' (all) in the 2nd link in my previous mail. It appears to
 > not show a different output in the kernel logs from when I set [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.147.123.19 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sakamocchi.jp]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mO8Cr-0044HV-O1
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

On Wed, Sep 08, 2021 at 07:30:14PM +0200, David Runge wrote:
> I am using '-1' (all) in the 2nd link in my previous mail. It appears to
> not show a different output in the kernel logs from when I set it to '5'
> though. There seems to be something wrong...
> I'm adding the options in a .conf file below /etc/modprobe.d/, e.g.:
> 
> ```
> options firewire-ohci debug=5
> ```
> 
> The only output I get from that is:
> 
> ```
> firewire_ohci 0000:05:00.0: enabling device (0000 -> 0002)
> firewire_ohci 0000:05:00.0: added OHCI v1.10 device as card 0, 8 IR + 8 IT contexts, quirks 0x2
> firewire_core 0000:05:00.0: created device fw0: GUID 7856341278563412, S800
> firewire_ohci 0000:05:00.0: isochronous cycle inconsistent
> firewire_core 0000:05:00.0: created device fw1: GUID 000a3500ada83262, S400
> firewire_core 0000:05:00.0: phy config: new root=ffc0, gap_count=5
> ```

Before printing 'created device fw1', Linux FireWire subsystem already
initiates asynchronous transactions to retrieve content of configuration
ROM located in 0x'ffff'f000'0400 of node address space. If you can see
no transaction record but see the print, it means to fail configuration
of the parameter of firewire-ohci module.

I think your system uses initramfs. Any node for storage function in
IEEE 1394 bus is available as initial boot disk, thus it's reasonable
that the designer of your initramfs puts firewire-ohci/firewire-core
modules into it. In the case, we can not configure module by
'/etc/modprobe.d/*' since the modules are already loaded before mounting
root file system.

I think the design of initramfs differs depending on distribution, thus
you need to find instruction for the way to configure module parameter
by yourself.

Instead, I suggest you to configure the module via sysfs after booting,
like:

```
# echo 5 > /sys/module/firewire_ohci/parameters/debug
```

Then retry detection of node for your Fireface 800. When turning off the
debug print, write 0 to the node of sysfs.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
