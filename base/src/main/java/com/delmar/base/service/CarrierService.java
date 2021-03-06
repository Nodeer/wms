
/******************************************************************************
 * 版权所有 刘大磊 2013-07-01												      *
 *	作者：刘大磊								                                      *
 * 电话：13336390671                                                          * 
 * email:ldlqdsd@126.com						                          *
 *****************************************************************************/

package com.delmar.base.service;

import java.util.List;

import com.delmar.base.model.Carrier;
import com.delmar.base.model.CarrierTrl;
import com.delmar.common.model.FileRelation;
import com.delmar.core.service.CoreService;

/**
 * @author 刘大磊 2014-12-22 13:26:54
 */
public interface CarrierService extends CoreService<Carrier> {
	
	Integer getIdByCode(String code);

	/**
	 * @param ids 要删除的运输公司 id列表
	 */
	void deleteCarrierList(Integer[] ids);
	
	/**
	 * 保存运输公司，和国际化信息
	 * @param carrier
	 * @param trlList
	 */
	void saveCarrier(Carrier carrier, List<CarrierTrl> trlList);

	/**
	 * @param carrier
	 * @param carrierTrlList
	 * @param fileRelationList
	 */
	void saveCarrier(Carrier carrier, List<CarrierTrl> carrierTrlList,
					 List<FileRelation> fileRelationList);
	

}